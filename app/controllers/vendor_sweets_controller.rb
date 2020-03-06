class VendorSweetsController < ApplicationController
    def new
        @vendorsweet = VendorSweet.new
    end
    
    def show
        @vendorsweets = VendorSweet.find(parmas[:id])
    end

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
        params.require(:vendor_sweet).permit(:sweet_id, :vendor_id, :price)
    end 
end
