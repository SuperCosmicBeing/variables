#
# Copyright (C) 2018-2019 The Google Pixel3ROM Project
# Copyright (C) 2020 Raphielscape LLC. and Haruka LLC.
#
# Licensed under the Apache License, Version 2.0 (the License);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an AS IS BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

# Recorder
ifeq ($(TARGET_SUPPORTS_GOOGLE_RECORDER), true)
PRODUCT_PACKAGES += \
    RecorderPrebuilt
endif

# arcore
ifeq ($(TARGET_INCLUDE_STOCK_ARCORE),true)
PRODUCT_PACKAGES += \
    arcore
endif

# product/app
PRODUCT_PACKAGES += \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt \
    CarrierMetrics \
    Chrome \
    Chrome-Stub \
    DevicePolicyPrebuilt \
    DiagnosticsToolPrebuilt \
    GoogleContacts \
    GoogleContactsSyncAdapter \
    GoogleTTS \
    LatinIMEGooglePrebuilt \
    LocationHistoryPrebuilt \
    MarkupGoogle \
    NgaResources \
    Ornament \
    PlayAutoInstallConfig \
    PrebuiltBugle \
    PrebuiltGmail \
    PrebuiltGoogleTelemetryTvp \
    SoundAmplifierPrebuilt \
    SoundPickerPrebuilt \
    TrichromeLibrary \
    TrichromeLibrary-Stub \
    Tycho \
    VZWAPNLib \
    WebViewGoogle \
    WebViewGoogle-Stub \
    YouTube \
    talkback

# product/priv-app
PRODUCT_PACKAGES += \
    AndroidAutoStubPrebuilt \
    AndroidMigratePrebuilt \
    AppDirectedSMSService \
    CarrierLocation \
    CarrierServices \
    CarrierSettings \
    CarrierWifi \
    ConfigUpdater \
    DCMO \
    ConnMO \
    ConnMetrics \
    DMService \
    GCS \
    GoogleDialer \
    GoogleOneTimeInitializer \
    DevicePersonalizationPrebuiltPixel2020 \
    MyVerizonServices \
    NovaBugreportWrapper \
    OBDM_Permissions \
    PartnerSetupPrebuilt \
    Phonesky \
    SCONE \
    ScribePrebuilt \
    SettingsIntelligenceGooglePrebuilt \
    SetupWizardPrebuilt \
    Showcase \
    SprintDM \
    SprintHM \
    TetheringEntitlement \
    TurboPrebuilt \
    USCCDM \
    Velvet \
    VzwOmaTrigger \
    WellbeingPrebuilt \
    WfcActivation \
    obdm_stub

# system/app
PRODUCT_PACKAGES += \
    GoogleExtShared \
    GooglePrintRecommendationService

# system/priv-app
PRODUCT_PACKAGES += \
    DocumentsUIGoogle \
    TagGoogle

# system_ext/app
PRODUCT_PACKAGES += \
    Flipendo

# system_ext/priv-app
PRODUCT_PACKAGES += \
    CarrierSetup \
    CbrsNetworkMonitor \
    GoogleFeedback \
    GoogleOneTimeInitializer \
    GoogleServicesFramework \
    grilservice \
    PixelSetupWizard \
    RilConfigService \
    StorageManagerGoogle \
    TurboAdapter

# PrebuiltGmsCore
PRODUCT_PACKAGES += \
    PrebuiltGmsCoreRvc \
    PrebuiltGmsCoreRvc_AdsDynamite \
    PrebuiltGmsCoreRvc_CronetDynamite \
    PrebuiltGmsCoreRvc_DynamiteLoader \
    PrebuiltGmsCoreRvc_DynamiteModulesA \
    PrebuiltGmsCoreRvc_DynamiteModulesC \
    PrebuiltGmsCoreRvc_GoogleCertificates \
    PrebuiltGmsCoreRvc_MapsDynamite \
    PrebuiltGmsCoreRvc_MeasurementDynamite \
    AndroidPlatformServices

PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

$(call inherit-product, vendor/gms/product/blobs/product_blobs.mk)
$(call inherit-product, vendor/gms/system/blobs/system_blobs.mk)
$(call inherit-product, vendor/gms/system_ext/blobs/system-ext_blobs.mk)

