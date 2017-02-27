module ApplicationHelper
  # Bootstrap pagination directive for angular
  # Params should come from $scope
  # Example:
  #   JS: $scope.total_items = 10; $scope.page = 1; $scope.item_per_page = 10;
  #       $scope.changePage = function(){//change page};
  #   View: <%= ng_pagination("total", "page", "per_page", "changePage()") %>
  # Note: Default current page is always 1 regardless scope value or url params
  # If they aren't equal 1 for the first run, event handler will be
  # executed automatically.
  def ng_pagination total_items, current_page, items_per_page, event_handler
    html = "<uib-pagination
      total-items=#{total_items}
      ng-model=#{current_page}
      max-size='5'
      items-per-page=#{items_per_page}
      class='pagination-sm'
      boundary-links='true'
      rotate='false'
      ng-change=#{event_handler}
      first-text='#{t('views.pagination.first')}'
      last-text='#{t('views.pagination.last')}'
      next-text='#{t('views.pagination.next')}'
      previous-text='#{t('views.pagination.previous')}'
    >
    </uib-pagination>"

    safe_join([html.html_safe])
  end
end
