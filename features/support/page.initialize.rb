Dir[File.join(File.dirname(__FILE__),'~\..\projetos\QA tests\features\pages*.pages.rb')].each { |file| require file}

module Page

  def login
    @login ||= LoginPage.new
  end

  def logged
    @logged ||= LoggedPage.new
  end
end
