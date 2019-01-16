module StaffObserver
  def initialize
    @observers = []
  end

  def add_staff(observer)
    @observers << observer
  end

  def delete_staff(observer)
    @observers.delete(observer)
  end

  def notify_staff
    @observers.each do |observer|
      observer.work(self)
    end
  end
end
