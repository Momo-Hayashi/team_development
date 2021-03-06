# frozen_string_literal: true

class AgendaDeletedMailer < ApplicationMailer
  def agenda_deleted_mail(agenda)
    @members = agenda.team.members
    mail to: @members.map(&:email).join(','), subject: 'アジェンダ削除のお知らせ'
  end
end

# 通常の書き方
# ["RUBY", "PHP", "JAVA"].map { |s| s.downcase }
# => ['ruby', 'php', 'java']

# 省略した書き方
# ["RUBY", "PHP", "JAVA"].map(&:downcase)
# => ["ruby", "php", "java"]
