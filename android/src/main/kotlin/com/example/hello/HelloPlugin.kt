package com.example.hello

import android.content.Context
import android.hardware.camera2.CameraManager
import android.os.Build
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService

class MyTileService : TileService() {

    private var isFlashOn = false

    override fun onClick() {
        super.onClick()
        toggleFlashlight()
    }

    private fun toggleFlashlight() {
        val cameraManager = getSystemService(Context.CAMERA_SERVICE) as CameraManager
        val cameraId = cameraManager.cameraIdList[0] // usually the rear camera

        isFlashOn = !isFlashOn

        try {
            cameraManager.setTorchMode(cameraId, isFlashOn)

            qsTile?.state = if (isFlashOn) {
                Tile.STATE_ACTIVE
            } else {
                Tile.STATE_INACTIVE
            }
            qsTile?.updateTile()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }
}
