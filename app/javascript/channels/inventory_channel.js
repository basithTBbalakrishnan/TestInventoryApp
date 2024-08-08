import { createConsumer } from "@rails/actioncable"

const cable = createConsumer('/cable')

const inventoryChannel = cable.subscriptions.create('InventoryChannel', {
  received(data) {

    const element = document.getElementById(`inventory_item_${data.inventory_item_id}`)
    if (element) {
      element.innerHTML = `<p>${data.name}: ${data.quantity}</p>`
    }
  }
})

export default inventoryChannel
