class InventoryItemsController < ApplicationController
  
  def update
    @inventory_item = InventoryItem.find(params[:id])
    if @inventory_item.update(inventory_item_params)
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Item updated successfully.' }
        format.turbo_stream
      end
    else
      render :edit
    end
  end


  def broadcast_inventory_item
    ActionCable.server.broadcast('inventory_channel', {
      inventory_item_id: @inventory_item.id,
      name: @inventory_item.name,
      quantity: @inventory_item.quantity
    })
  end

  private

  def inventory_item_params
    params.require(:inventory_item).permit(:quantity)
  end
end
