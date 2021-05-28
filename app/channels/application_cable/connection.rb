module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user
    identified_by :session_id

    def connect
      find_verified_user
      self.session_id = request.session.id
    end

    private

    def find_verified_user
      self.current_user = User.find_by(id: env['warden'].user.id)
      reject_unauthorized_connection unless current_user
    end
  end
end
