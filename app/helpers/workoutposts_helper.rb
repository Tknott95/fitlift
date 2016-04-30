module WorkoutpostsHelper
  def sortable(column, title=nil)
    title ||= column.titleize
    direction = direction_for_column(column)
    link_to title, sort: column, direction: direction
  end


  private

  def direction_for_column(column)
    (column == params[:sort] && params[:direction] == 'asc') ? 'desc' : 'asc'
  end
end
