module BootstrapHelper
  ALERT_TYPES = {
    alert: :danger,
    info: :info,
    notice: :success,
    warning: :warning
  }.with_indifferent_access

  def bootstrap_flash
    flash.select{ |type, messages| messages.present? && ALERT_TYPES.has_key?(type) }.flat_map do |type, messages|
      Array(messages).select(&:present?).map do |msg|
        content_tag(:div, content_tag(:button, raw("&times;"), class: "close", data: { dismiss: "alert" }) + msg.html_safe, class: "alert fade in alert-#{ALERT_TYPES[type]}")
      end
    end.compact.join("\n").html_safe
  end
end
