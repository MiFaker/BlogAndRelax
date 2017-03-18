class Home::HomesController < Home::BaseHomeController
  include DeviseCommon

  helper_method [:resource_name, :resource, :resource_class]
end
