# frozen_string_literal: true

module DiscoursePrivateReplies
  class PrivateRepliesController < ApplicationController
    requires_login

    def enable
      t = Topic.find(params[:topic_id])
      if current_user.id == current_user.staff?
        t.custom_fields['private_replies'] = true
        t.save!
        render json: { private_replies_enabled: true }
      else
        render json: { failed: 'Access denied' }, status: 403
      end
    end

    def disable
      t = Topic.find(params[:topic_id])
      if current_user.id == current_user.staff?
        t.custom_fields['private_replies'] = false
        t.save!
        render json: { private_replies_enabled: false }
      else
        render json: { failed: 'Access denied' }, status: 403
      end
    end
  end
end

