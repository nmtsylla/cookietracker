module Api
  module V1
    class WebsitesController < ApplicationController
      before_action :set_website, only: [:show, :update, :destroy]

      # GET /websites
      def index
        @websites = Website.includes(:kookies)
        render json: @websites
      end

      # GET /websites/1
      def show
        render json: @website
      end

      # POST /websites
      def create
        begin
          @website = CreateScheduleWebsite.new(website_params).call
          render json: @website, status: :created
        rescue Exception => e
          render json: { message: e.message }, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /websites/1
      def update
        begin
          @website = UpdateScheduleWebsite.new(params[:id], website_params).call
          render json: @website
        rescue Exception => e
          render json: { message: e.message }, status: :unprocessable_entity
        end
      end

      # DELETE /websites/1
      def destroy
        begin
          DisableWebsite.new(params).call
        rescue Exception => e
          render json: { message: e.message }, status: :unprocessable_entity
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_website
          @website = Website.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def website_params
          params.require(:website).permit(:url, :scan_schedule, :weekly_scan_day, :added_date, :last_scanned, :customer_id, :active)
        end
    end
  end
end