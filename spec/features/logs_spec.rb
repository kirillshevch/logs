feature 'Logs', type: :feature do
  scenario 'base log rendering' do
    visit logs.root_path(name: 'dummy')

    expect(page).to have_content 'dummy.log'

    expect(page).to have_content Logs::Viewer.call('dummy').readlines[0..49].join

    expect(page).to have_content I18n.t('logs.log_file')
    expect(page).to have_content I18n.t('logs.lines')
  end

  context 'pagination' do
    scenario 'first page' do
      visit logs.root_path(name: 'dummy')

      expect(page).to have_content I18n.t('logs.pages')
      expect(page).to have_content I18n.t('logs.last')

      expect(page).not_to have_content I18n.t('logs.first')
    end

    context 'not first page' do
      scenario do
        visit logs.root_path(name: 'dummy', page: 2)

        expect(page).to have_content I18n.t('logs.pages')
        expect(page).to have_content I18n.t('logs.last')

        expect(page).not_to have_content I18n.t('logs.first')
      end

      scenario do
        visit logs.root_path(name: 'dummy', page: 12)

        expect(page).to have_content I18n.t('logs.pages')
        expect(page).not_to have_content I18n.t('logs.last')

        expect(page).to have_content I18n.t('logs.first')
      end
    end

    scenario 'last page' do
      visit logs.root_path(name: 'dummy')

      click_link I18n.t('logs.last')

      expect(page).to have_content I18n.t('logs.pages')
      expect(page).to have_content I18n.t('logs.first')

      expect(page).not_to have_content I18n.t('logs.last')
    end
  end
end
