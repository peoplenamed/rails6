require 'json'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: ["landing_view", "users/sign_in"]
  before_action :set_app_name
  before_action :set_app_stats
  before_action :getNavigation
  before_action :configure_permitted_parameters, if: :devise_controller?


  def set_app_name
    @APPLICATION_NAME = "New Application"
  end

  def set_app_stats
    set_data_daily_sales_chart
    set_data_completed_tasks_chart
  end


  def set_data_daily_sales_chart
    @DATA_DAILY_SALES_CHART = {
      labels: ["M", "T", "W", "T", "F", "S", "S"],
      series: [[12, 17, 7, 17, 23, 18, 38]]
    }
    @OTIONS_DAILY_SALES_CHART = {
      low: 0,
      high: 50,
      chartPadding: {
        top: 0,
        right: 0,
        bottom: 0,
        left: 0
      }
    }
  end

  def set_data_completed_tasks_chart
    @DATA_COMPLETED_TASKS_CHART = {
      labels: ["12p", "3p", "6p", "9p", "12p", "3a", "6a", "9a"],
      series: [[230, 750, 450, 300, 280, 240, 200, 190]]
    }
    @OPTIONS_COMPLETED_TASKS_CHART = {
      low: 0,
      high: 1e3,
      chartPadding: {
        top: 0,
        right: 0,
        bottom: 0,
        left: 0
      }
    }
  end

  def getNavigation(active=nil)
    @NAVIGATION_LINKS = [
      {
        href: "/",
        icon: "dashboard",
        text: "Dashboard"
      },
      {
        href: "/users/edit",
        icon: "person",
        text: "Profile",
        active: active == "person"
      },
      {
        href: "/",
        icon: "content_paste",
        text: "Table List",
        active: active == "content_paste"
      },
      {
        href: "/",
        icon: "library_books",
        text: "Typography",
        active: active == "library_books"
      },
      {
        href: "/",
        icon: "bubble_chart",
        text: "Icons",
        active: active == "bubble_chart"
      },
      {
        href: "/",
        icon: "location_ons",
        text: "Maps",
        active: active == "location_ons"
      },
      {
        href: "/",
        icon: "notifications",
        text: "Notifications",
        active: active == "notifications"
      }
    ]
  end

  def index

  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :address1, :address2, :city, :country, :zip, :about])
  end

end

