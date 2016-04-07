class FormPostMessageDelivered
  def from_form_data(params)
    @occured_at = Time.parse(params[:sentAt])
  end

  def to_json
    {
      type: :delivered,
      msg:  "Delivered message",
      at:   @occurred_at || Time.now
    }.to_json
  end
end
