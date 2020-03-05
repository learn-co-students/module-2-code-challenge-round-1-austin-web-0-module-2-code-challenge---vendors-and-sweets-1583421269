class VendorSweetsController < ApplicationController
    def new
        @vendorsweets = VendorSweet.new

    def create
        @vendorsweet = VendorSweet.create(vendorsweet_params)
        if @vendorsweet.persisted?
            redirect_to @vendorsweet.vendor
        else
            render 'new'
        end
    end

    private


    def vendorsweet_params
        params.require(:vendorsweet).permit(:sweet_id, :vendor_id, :price)
    end 
end
