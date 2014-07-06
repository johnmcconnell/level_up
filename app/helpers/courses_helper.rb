module CoursesHelper

  def category_summary
    @category_summary ||= CategorySummary.summarize_user(current_user)
  end

  def course_summary_for(course)
    @course_summaries ||= {}
    @course_summaries[course] ||= CategorySummary.summarize_course(course, category_summary)
  end

  def completion_percent_for(course)
    summary = course_summary_for(course)
    ((summary[:completed] / summary[:total].to_f) * 100).ceil
  end

  def visible_categories_for(course)
    Category.visible_categories_for(course)
  end

end