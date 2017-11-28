feature 'Logs', type: :feature do
  scenario 'base log rendering' do
    visit logs.root_path

    expect(page).to have_content 'test.log'

    expect(page).to have_content I18n.t('logs.log_file')
    expect(page).to have_content I18n.t('logs.lines')
  end

  context 'pagination' do
    scenario 'first page' do
      visit logs.root_path

      expect(page).to have_content I18n.t('logs.pages')
      expect(page).to have_content I18n.t('logs.lines_per_page')
      expect(page).to have_content I18n.t('logs.last')

      expect(page).not_to have_content I18n.t('logs.first')
    end

    scenario 'not first page' do
      visit logs.root_path(page: 2)

      expect(page).to have_content I18n.t('logs.pages')
      expect(page).to have_content I18n.t('logs.lines_per_page')
      expect(page).to have_content I18n.t('logs.last')

      expect(page).to have_content I18n.t('logs.first')
    end

    scenario 'last page' do
      visit logs.root_path

      click_link I18n.t('logs.last')

      expect(page).to have_content I18n.t('logs.pages')
      expect(page).to have_content I18n.t('logs.lines_per_page')
      expect(page).to have_content I18n.t('logs.first')

      expect(page).not_to have_content I18n.t('logs.last')
    end
  end
end
