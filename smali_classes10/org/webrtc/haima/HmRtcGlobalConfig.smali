.class public Lorg/webrtc/haima/HmRtcGlobalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;
    }
.end annotation


# static fields
.field private static final CONNECTION_PING_INTERVAL_MS:Ljava/lang/String; = "conn_ping_interval_ms"

.field private static final DROP_CLIENT_CANDIDATE:Ljava/lang/String; = "drop_client_candidate"

.field private static final FORCED_PLAYOUT_DELAY_MAX:Ljava/lang/String; = "forced_playout_delay_max"

.field private static final FORCED_PLAYOUT_DELAY_MIN:Ljava/lang/String; = "forced_playout_delay_min"

.field private static final FORCE_H264_FORMAT:Ljava/lang/String; = "rtc_force_H264_format"

.field private static final FORCE_H264_FORMAT_V2:Ljava/lang/String; = "rtc_force_H264_format_v2"

.field private static final FORCE_VP8_FORMAT:Ljava/lang/String; = "rtc_force_VP8_format"

.field private static final HMRTC_AV_Delay_SDK:Ljava/lang/String; = "hm_rtc_av_delay_sdk"

.field private static final HM_CONST_SMOOTHFPS_KEY:Ljava/lang/String; = "hm_const_smoothfps"

.field private static KEY_RTC_FIELD_FEC_TRIALS:Ljava/lang/String; = null

.field private static KEY_RTC_FIELD_TRIALS:Ljava/lang/String; = null

.field private static final MAX_ALLOWED_FRAMEBUFFER_SIZE_IN_NORMAL:Ljava/lang/String; = "max_allowed_framebuffer_size_in_normal"

.field private static final NOT_USE_SHARED_CONTEXT_OVER_ANDROID6:Ljava/lang/String; = "not_use_shared_context_over_android6"

.field private static final NOT_USE_SHARED_CONTEXT_VIA_MODEL:Ljava/lang/String; = "rtc_not_use_shared_context_via_model"

.field private static final NOT_USE_SHARED_CONTEXT_VIA_MODEL_EXACT:Ljava/lang/String; = "rtc_not_use_shared_context_via_model_exact"

.field private static final OPEN_H265:Ljava/lang/String; = "open_h265"

.field private static final PLAYOUT_DELAY_MODE:Ljava/lang/String; = "playout_delay_mode"

.field private static final PORT7681_DATACHANNEL_POLICY:Ljava/lang/String; = "port7681_datachannel_policy"

.field private static final PORT7682_DATACHANNEL_POLICY:Ljava/lang/String; = "port7682_datachannel_policy"

.field public static final RTC_ANABLE_ENCODER_H264_HP:Ljava/lang/String; = "rtc_enable_encoder_h264_hp"

.field private static final RTC_CLOSE_LOW_LATENCY:Ljava/lang/String; = "rtc_close_decoder_low_latency"

.field private static final RTC_DATACHANNEL_ENABLED:Ljava/lang/String; = "rtc_datachannel_enabled"

.field private static final RTC_DATACHANNEL_ENABLED_PERCENT_V2:Ljava/lang/String; = "rtc_datachannel_enabled_percent_v2"

.field private static final RTC_DEBUG_MODE:Ljava/lang/String; = "hm_rtc_sdk_debug"

.field private static final RTC_DOWNLOAD_AUDIO_ON:Ljava/lang/String; = "rtc_download_audio_on"

.field private static final RTC_DOWNLOAD_VIDEO_ON:Ljava/lang/String; = "rtc_download_video_on"

.field public static final RTC_EGL_MONOCHROME_OFF:Ljava/lang/String; = "rtc_egl_monochrome_off"

.field private static final RTC_ENABLE_CACHE_DECODERS:Ljava/lang/String; = "rtc_enable_cache_decoders"

.field private static final RTC_ENABLE_FRAME_INTERPOLATION:Ljava/lang/String; = "rtc_enable_frame_interpolation"

.field private static final RTC_ENABLE_FRAME_INTERPOLATION_V2:Ljava/lang/String; = "rtc_enable_frame_interpolation_v2"

.field public static final RTC_ENABLE_GET_WIFI_SSID_DEFAULT:Ljava/lang/String; = "rtc_enable_get_wifi_ssid_default"

.field public static final RTC_ENABLE_IMAGE_ENHANCEMENT:Ljava/lang/String; = "rtc_enable_image_enhancement"

.field public static final RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING:Ljava/lang/String; = "rtc_enable_media_codec_output_dropping"

.field public static final RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_EXACT:Ljava/lang/String; = "rtc_enable_media_codec_output_dropping_exact"

.field public static final RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_V2:Ljava/lang/String; = "rtc_enable_media_codec_output_dropping_v2"

.field public static final RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_WHITE_BLACK_LIST:Ljava/lang/String; = "rtc_enable_media_codec_output_dropping_white_black_list"

.field public static final RTC_ENABLE_MEDIA_CODEC_VIDEO_DECODER_LOW_LATENCY:Ljava/lang/String; = "rtc_enable_media_codec_video_decoder_low_latency"

.field private static final RTC_ENABLE_NETWORK_ACCELERATE:Ljava/lang/String; = "rtc_enable_network_accelerate"

.field private static final RTC_ENABLE_REMOVE_SEI:Ljava/lang/String; = "rtc_enable_remove_sei"

.field private static final RTC_ENABLE_SHARE_STREAMING:Ljava/lang/String; = "rtc_enable_share_streaming"

.field private static final RTC_ENABLE_SIGNALV1_DNSRESOLVE_OPTIMIZE:Ljava/lang/String; = "rtc_enable_signalv1_dnsresolve_optimize"

.field private static final RTC_ENABLE_SRTP_CIPHER_REPORT:Ljava/lang/String; = "rtc_enable_srtp_cipher_report"

.field private static final RTC_ENABLE_SURFACE_SWITCH:Ljava/lang/String; = "rtc_enable_surface_switch"

.field private static final RTC_ENABLE_SWITCH_CELLULAR_NETWORK:Ljava/lang/String; = "rtc_enable_switch_cellular_network"

.field public static final RTC_ENABLE_TURN_PROTOCOL:Ljava/lang/String; = "rtc_enable_turn_protocol"

.field public static final RTC_ENABLE_VIDEO_FRAME_ELAPSED_TIME_REPORT:Ljava/lang/String; = "rtc_enable_video_frame_elapsed_time_report"

.field private static final RTC_ENABLE_WEAKLY_NET_REPORT:Ljava/lang/String; = "rtc_enable_weakly_net_report"

.field private static final RTC_FIRST_FRAME_INTERPOLATION_INTERVAL:Ljava/lang/String; = "rtc_first_frame_interpolation_interval"

.field private static final RTC_FLEX_FEC_FEC_PACKETS:Ljava/lang/String; = "rtc_fec_max_fec_packets"

.field private static final RTC_FLEX_FEC_MEDIA_PACKETS:Ljava/lang/String; = "rtc_fec_max_media_packets"

.field private static final RTC_FOLLOWING_FRAME_INTERPOLATION_INTERVAL:Ljava/lang/String; = "rtc_following_frame_interpolation_interval"

.field public static final RTC_FORCE_EGL10:Ljava/lang/String; = "rtc_force_egl10"

.field public static final RTC_FORCE_EGL10_V2:Ljava/lang/String; = "rtc_force_egl10_v2"

.field private static final RTC_FRAME_BUFFER_SIZE_LIMIT:Ljava/lang/String; = "rtc_frame_buffer_size_limit"

.field private static final RTC_FRAME_INFO_MATCH_BY_PTS:Ljava/lang/String; = "rtc_frame_info_match_by_pts"

.field private static final RTC_FRAME_INTERPOLATION_TOP_LIMIT:Ljava/lang/String; = "rtc_frame_interpolation_top_limit"

.field private static final RTC_HM_BAD_FRAME_DETECT_CONFIG:Ljava/lang/String; = "rtc_bad_frame_detect_config"

.field private static final RTC_HM_BAD_FRAME_DETECT_CONFIG_SWITCH_FOR_V2:Ljava/lang/String; = "rtc_bad_frame_detect_config_switch_v2"

.field private static final RTC_HM_BAD_FRAME_DETECT_CONFIG_V2:Ljava/lang/String; = "rtc_bad_frame_detect_config_v2"

.field private static final RTC_HM_NACK_BUFFER_CONFIG:Ljava/lang/String; = "rtc_nack_buffer_config_v2"

.field private static final RTC_HWDECODER_BUFFER_MODE:Ljava/lang/String; = "rtc_hwdecoder_buffer_mode"

.field public static final RTC_IMAGE_ADJUSTABLE:Ljava/lang/String; = "rtc_image_adjustable"

.field public static final RTC_IMAGE_BRIGHTNESS_RATIO:Ljava/lang/String; = "rtc_brightness_ratio"

.field public static final RTC_IMAGE_CONTRAST_RATIO:Ljava/lang/String; = "rtc_contrast_ratio"

.field public static final RTC_IMAGE_SATURATION_RATIO:Ljava/lang/String; = "rtc_saturation_ratio"

.field private static final RTC_LOW_PERFORMANCE_DEVICE_DETERMINE_ON:Ljava/lang/String; = "rtc_low_performance_device_determine_on"

.field private static final RTC_NACK_REPORT_DELAY_TIME:Ljava/lang/String; = "rtc_nack_report_delay_time"

.field private static final RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION:Ljava/lang/String; = "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception"

.field private static final RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL:Ljava/lang/String; = "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception_model"

.field private static final RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL_EXACT:Ljava/lang/String; = "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception_model_exact"

.field private static final RTC_NO_OUTPUT_LONG_TIME:Ljava/lang/String; = "rtc_no_output_long_time"

.field private static final RTC_OPEN_FEC:Ljava/lang/String; = "rtc_open_fec"

.field private static final RTC_OPEN_FLEX_FEC:Ljava/lang/String; = "rtc_open_flexfec"

.field private static final RTC_OPERATION_DELAY_SDK:Ljava/lang/String; = "rtc_operation_delay_sdk"

.field public static final RTC_PREFER_VIDEO_CODEC:Ljava/lang/String; = "rtc_prefer_video_codec"

.field private static final RTC_RTCP_INTERVAL_TIME:Ljava/lang/String; = "rtc_rtcp_interval_time"

.field public static final RTC_SIGNALV2_SIGNALV1DELAYTIME:Ljava/lang/String; = "rtc_signalv2_signalv1delaytime"

.field private static final RTC_SMOOTHLY_DECODING:Ljava/lang/String; = "rtc_smooth_decoding"

.field public static final RTC_STUNREQ_RESEND_CONFIG:Ljava/lang/String; = "rtc_stun_request_resend_config"

.field public static final RTC_UDP_PORT_CONFIG:Ljava/lang/String; = "rtc_udp_port_config"

.field private static final RTC_UPLOAD_ADDITIONAL_ORIENTATION_BACK_CAMERA1:Ljava/lang/String; = "rtc_upload_additional_orientation_back_camera1"

.field private static final RTC_UPLOAD_ADDITIONAL_ORIENTATION_BACK_CAMERA2:Ljava/lang/String; = "rtc_upload_additional_orientation_back_camera2"

.field private static final RTC_UPLOAD_ADDITIONAL_ORIENTATION_FRONT_CAMERA1:Ljava/lang/String; = "rtc_upload_additional_orientation_front_camera1"

.field private static final RTC_UPLOAD_ADDITIONAL_ORIENTATION_FRONT_CAMERA2:Ljava/lang/String; = "rtc_upload_additional_orientation_front_camera2"

.field private static final RTC_UPLOAD_AUDIO_CONFIG:Ljava/lang/String; = "rtc_upload_audio_config"

.field private static final RTC_UPLOAD_AUDIO_ON:Ljava/lang/String; = "rtc_upload_audio_on"

.field private static final RTC_UPLOAD_BACK_CAMERA_MIRROR_CAMERA1:Ljava/lang/String; = "rtc_upload_back_camera_mirror_camera1"

.field private static final RTC_UPLOAD_BACK_CAMERA_MIRROR_CAMERA2:Ljava/lang/String; = "rtc_upload_back_camera_mirror_camera2"

.field private static final RTC_UPLOAD_FRONT_CAMERA_MIRROR_CAMERA1:Ljava/lang/String; = "rtc_upload_front_camera_mirror_camera1"

.field private static final RTC_UPLOAD_FRONT_CAMERA_MIRROR_CAMERA2:Ljava/lang/String; = "rtc_upload_front_camera_mirror_camera2"

.field private static final RTC_UPLOAD_VIDEO_FPS:Ljava/lang/String; = "rtc_upload_video_fps"

.field private static final RTC_UPLOAD_VIDEO_MAX_BITRATE:Ljava/lang/String; = "rtc_upload_video_max_bitrate"

.field private static final RTC_UPLOAD_VIDEO_MIN_BITRATE:Ljava/lang/String; = "rtc_upload_video_min_bitrate"

.field private static final RTC_UPLOAD_VIDEO_ON:Ljava/lang/String; = "rtc_upload_video_on_v2"

.field private static final RTC_UPLOAD_VIDEO_RESOLUTION:Ljava/lang/String; = "rtc_upload_video_resolution"

.field public static final RTC_USE_DIRECT_SURFACE_VIEW:Ljava/lang/String; = "rtc_use_direct_surface_view"

.field public static final RTC_USE_DIRECT_SURFACE_VIEW_EXACT:Ljava/lang/String; = "rtc_use_direct_surface_view_exact"

.field public static final RTC_USE_DIRECT_SURFACE_VIEW_V2:Ljava/lang/String; = "rtc_use_direct_surface_view_v2"

.field public static final RTC_USE_DIRECT_SURFACE_VIEW_WHITE_BLACK_LIST:Ljava/lang/String; = "rtc_use_direct_surface_view_white_black_list"

.field private static final RTC_WAIT_FOR_FRAME_MS:Ljava/lang/String; = "rtc_wait_for_frame_ms"

.field private static final RTC_X86_NOT_USE_SURFACE_RENDER:Ljava/lang/String; = "rtc_tv_x86_not_use_surface_render"

.field public static final SC_RENDER_TYPE_EGL:I = 0x1

.field public static final SC_RENDER_TYPE_SURFACE:I = 0x2

.field public static final SC_RENDER_TYPE_YUV:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HmRtcGlobalConfig"

.field private static final UNWRITABLE_MIN_CHECKS:Ljava/lang/String; = "unwritable_min_checks"

.field private static final UNWRITABLE_TIME_OUT_MS:Ljava/lang/String; = "unwritable_timeout_ms"

.field private static final UPDATE_NETWORKS_CONTINUABLE_ON:Ljava/lang/String; = "update_networks_continuable_on"

.field private static final USE_SHARED_CONTEXT_LESS_ANDROID6:Ljava/lang/String; = "use_shared_context_less_android6"

.field private static final USE_SHARED_CONTEXT_VIA_MODEL:Ljava/lang/String; = "rtc_use_shared_context_via_model"

.field private static final USE_SHARED_CONTEXT_VIA_MODEL_EXACT:Ljava/lang/String; = "rtc_use_shared_context_via_model_exact"

.field private static final USE_SOFTWARE_DECODER_VIA_MODEL:Ljava/lang/String; = "rtc_use_software_decoder_via_model"

.field private static final USE_SOFTWARE_DECODER_VIA_MODEL_EXACT:Ljava/lang/String; = "rtc_use_software_decoder_via_model_exact"

.field private static final USE_TEXTURE_CLONING_FLAG:Ljava/lang/String; = "use_texture_cloning_flag"

.field private static final VIDEO_REMOTE_RESOURCE_ADAPTATION_ON:Ljava/lang/String; = "video_remote_resource_adaptation_on"

.field public static cacheDecodersTimeout:I = 0x0

.field private static configKeys:[Ljava/lang/String; = null

.field public static disable_builtin_aec:Z = false

.field public static disable_builtin_agc:Z = false

.field public static disable_builtin_ns:Z = false

.field public static disable_webrtc_agc_and_hpf:Z = false

.field private static dropClientCandidateConfig:Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig; = null

.field public static drop_client_candidate_percent:I = 0x0

.field public static forceH264Format:Z = false

.field public static forceVP8Format:Z = false

.field public static forced_playout_delay_max:I = 0x0

.field public static forced_playout_delay_min:I = 0x0

.field private static h265Switch:Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig; = null

.field private static hmBadFrameDetectConfigParams:Ljava/lang/String; = ""

.field public static hmNackBufferForceLimit:I = 0x0

.field public static hmNackBufferLimit:I = 0x0

.field public static hmNackBufferSalt:I = 0x0

.field public static hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters; = null

.field private static hm_const_smoothfps:I = 0x0

.field private static iceStableWritableConnectionPingInterval:I = 0x0

.field private static iceUnwritableMinChecks:I = 0x0

.field private static iceUnwritableTimeMs:I = 0x0

.field public static isCloseDecoderLowLatency:Z = false

.field public static isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z = false

.field private static mCloudRtcFieldTrials:Ljava/lang/String; = null

.field private static mHMRTCloudConfig:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mHmRtcSdkDebugCfg:Lorg/webrtc/haima/HmRtcSdkDebugCfg; = null

.field private static mNewRTCloudConfig:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNewRTCloudConfigWithNoCid:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static max_allowed_framebuffer_size_in_normal:I = 0x0

.field private static newConfigKeys:[Ljava/lang/String; = null

.field private static newConfigKeysWithNoCid:[Ljava/lang/String; = null

.field public static no_audio_processing:Z = false

.field public static playout_delay_mode:I = 0x0

.field private static rtcBadFrameDetectConfigSwitchV2:Z = false

.field public static rtcBrightnessRatio:F = 0.0f

.field public static rtcContrastRatio:F = 0.0f

.field public static rtcEglMonochromeOff:Z = false

.field public static rtcEnableCacheDecoders:Z = false

.field public static rtcEnableEncoderH264HP:Z = false

.field public static rtcEnableFrameInterpolation:Z = false

.field public static rtcEnableGetWifiSsidDefault:Z = false

.field public static rtcEnableImageEnhancement:Z = false

.field public static rtcEnableMediaCodecOutputDropping:Z = false

.field public static rtcEnableMediaCodecVideoDecoderLowLatency:Z = false

.field public static rtcEnableNetworkAccelerate:Z = false

.field public static rtcEnableNoOutputLongTimeRequestKeyFrame:Z = false

.field public static rtcEnableRemoveSei:Z = false

.field public static rtcEnableShareStreaming:Z = false

.field public static rtcEnableSignalv1DnsResolveOptimize:Z = false

.field public static rtcEnableSmoothlyDecoding:Z = false

.field public static rtcEnableSmoothlyDecodingDebug:Z = false

.field public static rtcEnableSrtpCipherReport:Z = false

.field public static rtcEnableSurfaceSwitch:Z = false

.field public static rtcEnableSwitchCellularNetwork:Z = false

.field public static rtcEnableTurnProtocol:Z = false

.field public static rtcEnableVideoFrameElapsedTimeReport:Z = false

.field public static rtcEnableWeaklyNetDebug:Z = false

.field public static rtcEnableWeaklyNetReport:Z = false

.field public static final rtcFecTypeFlexFec:I = 0x1

.field public static final rtcFecTypeNull:I = 0x0

.field public static final rtcFecTypeRsFec:I = 0x2

.field public static final rtcFecTypeUnSet:I = -0x1

.field public static rtcFirstFrameInterpolationInterval:I = 0x0

.field public static rtcFollowingFrameInterpolationInterval:I = 0x0

.field public static rtcForceEgl10:Z = false

.field public static rtcFrameInterpolationTopLimit:I = 0x0

.field public static rtcHwDecoderBufferMode:I = 0x0

.field public static rtcImageAdjustable:Z = false

.field public static rtcImageEnhancementStrength:I = 0x0

.field public static rtcMaxFecPackets:I = 0x0

.field public static rtcMaxMediaPackets:I = 0x0

.field public static rtcMaxWaitForFrameMs:I = 0x0

.field public static rtcNackReportDelayTime:I = 0x0

.field public static rtcNoOutputFramesIntervalMs:I = 0x0

.field public static rtcNumOfNotDecodedFramesThreshold:I = 0x0

.field public static rtcOpenFEC:I = 0x0

.field public static rtcOpenFlexFEC:I = 0x0

.field public static rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig; = null

.field public static rtcPreferVideoCodec:Ljava/lang/String; = null

.field public static rtcRtcpIntervalTime:I = 0x0

.field public static rtcSaturationRatio:F = 0.0f

.field public static rtcSmoothlyMaxDecoderBuffers:I = 0x0

.field public static rtcSmoothlyMaxWaitDelay:I = 0x0

.field public static rtcSmoothlyMinDecoderBuffers:I = 0x0

.field public static rtcSmoothlyMinWaitDelay:I = 0x0

.field public static rtcStunReqResendCfg:Lorg/webrtc/haima/HmRtcStunRequestResendCfg; = null

.field public static rtcTurnAuthInfo:Ljava/lang/String; = null

.field public static rtcUdpPortCfg:Lorg/webrtc/haima/HmRtcUdpPortCfg; = null

.field public static rtcUseDirectSurfaceView:Z = false

.field public static rtc_debug_mode:Z = false

.field public static rtc_download_audio_on:Z = false

.field public static rtc_download_video_on:Z = false

.field public static rtc_enable_transport_device:Z = false

.field public static rtc_frame_buffer_size_limit:I = 0x0

.field public static rtc_frame_info_match_by_pts:Z = false

.field public static rtc_low_performance_device_determine_on:Z = false

.field public static rtc_signalv2_signalv1delaytime:I = 0x0

.field public static rtc_upload_additional_orientation_back_camera1:I = 0x0

.field public static rtc_upload_additional_orientation_back_camera2:I = 0x0

.field public static rtc_upload_additional_orientation_front_camera1:I = 0x0

.field public static rtc_upload_additional_orientation_front_camera2:I = 0x0

.field public static rtc_upload_audio_on:Z = false

.field public static rtc_upload_back_camera_mirror_camera1:Z = false

.field public static rtc_upload_back_camera_mirror_camera2:Z = false

.field public static rtc_upload_front_camera_mirror_camera1:Z = false

.field public static rtc_upload_front_camera_mirror_camera2:Z = false

.field public static rtc_upload_video_on:Z = false

.field public static updateNeworksContinuableOn:Z = false

.field public static useSharedContext:Z = false

.field public static useSoftwareDecoder:Z = false

.field public static useSurfaceRender:Z = false

.field public static useTextureCloningFlag:Z = false

.field public static videoRemoteResourceAdaptationOn:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    sput-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    .line 12
    .line 13
    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_aec:Z

    .line 14
    .line 15
    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_agc:Z

    .line 16
    .line 17
    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_ns:Z

    .line 18
    .line 19
    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_webrtc_agc_and_hpf:Z

    .line 20
    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcContrastRatio:F

    .line 24
    .line 25
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSaturationRatio:F

    .line 26
    .line 27
    const/16 v0, 0x3e8

    .line 28
    .line 29
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_signalv2_signalv1delaytime:I

    .line 30
    .line 31
    const/16 v0, 0x64

    .line 32
    .line 33
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFirstFrameInterpolationInterval:I

    .line 34
    .line 35
    const/16 v0, 0x21

    .line 36
    .line 37
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFollowingFrameInterpolationInterval:I

    .line 38
    .line 39
    const v0, 0x7fffffff

    .line 40
    .line 41
    .line 42
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFrameInterpolationTopLimit:I

    .line 43
    .line 44
    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSignalv1DnsResolveOptimize:Z

    .line 45
    .line 46
    new-instance v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 47
    .line 48
    invoke-direct {v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 52
    .line 53
    new-instance v0, Lorg/webrtc/haima/HmOperationDelayConfig;

    .line 54
    .line 55
    invoke-direct {v0}, Lorg/webrtc/haima/HmOperationDelayConfig;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    .line 59
    .line 60
    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSwitchCellularNetwork:Z

    .line 61
    .line 62
    new-instance v0, Lorg/webrtc/haima/HmRtcUdpPortCfg;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {v0, v1}, Lorg/webrtc/haima/HmRtcUdpPortCfg;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUdpPortCfg:Lorg/webrtc/haima/HmRtcUdpPortCfg;

    .line 69
    .line 70
    new-instance v0, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcStunReqResendCfg:Lorg/webrtc/haima/HmRtcStunRequestResendCfg;

    .line 76
    .line 77
    const/4 v0, 0x6

    .line 78
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->cacheDecodersTimeout:I

    .line 79
    .line 80
    const/16 v0, 0x1e

    .line 81
    .line 82
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNumOfNotDecodedFramesThreshold:I

    .line 83
    .line 84
    const/16 v1, 0x7d0

    .line 85
    .line 86
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNoOutputFramesIntervalMs:I

    .line 87
    .line 88
    const/4 v1, 0x5

    .line 89
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMinDecoderBuffers:I

    .line 90
    .line 91
    const/16 v1, 0x3c

    .line 92
    .line 93
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMaxDecoderBuffers:I

    .line 94
    .line 95
    const/4 v1, 0x3

    .line 96
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMinWaitDelay:I

    .line 97
    .line 98
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMaxWaitDelay:I

    .line 99
    .line 100
    const-string v0, ""

    .line 101
    .line 102
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcPreferVideoCodec:Ljava/lang/String;

    .line 103
    .line 104
    const/16 v0, 0x96

    .line 105
    .line 106
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcImageEnhancementStrength:I

    .line 107
    .line 108
    const-string v1, "drop_client_candidate"

    .line 109
    .line 110
    const-string v2, "open_h265"

    .line 111
    .line 112
    const-string v3, "conn_ping_interval_ms"

    .line 113
    .line 114
    const-string v4, "hm_const_smoothfps"

    .line 115
    .line 116
    const-string v5, "unwritable_timeout_ms"

    .line 117
    .line 118
    const-string v6, "unwritable_min_checks"

    .line 119
    .line 120
    const-string v7, "not_use_shared_context_over_android6"

    .line 121
    .line 122
    const-string v8, "use_shared_context_less_android6"

    .line 123
    .line 124
    const-string v9, "rtc_not_use_shared_context_via_model"

    .line 125
    .line 126
    const-string v10, "rtc_use_shared_context_via_model"

    .line 127
    .line 128
    const-string v11, "rtc_not_use_shared_context_via_model_exact"

    .line 129
    .line 130
    const-string v12, "rtc_use_shared_context_via_model_exact"

    .line 131
    .line 132
    const-string v13, "rtc_use_software_decoder_via_model"

    .line 133
    .line 134
    const-string v14, "rtc_use_software_decoder_via_model_exact"

    .line 135
    .line 136
    const-string v15, "rtc_force_VP8_format"

    .line 137
    .line 138
    const-string v16, "rtc_frame_buffer_size_limit"

    .line 139
    .line 140
    const-string v17, "rtc_frame_info_match_by_pts"

    .line 141
    .line 142
    const-string v18, "rtc_datachannel_enabled_percent_v2"

    .line 143
    .line 144
    const-string v19, "port7681_datachannel_policy"

    .line 145
    .line 146
    const-string v20, "port7682_datachannel_policy"

    .line 147
    .line 148
    const-string v21, "rtc_open_flexfec"

    .line 149
    .line 150
    const-string v22, "rtc_open_fec"

    .line 151
    .line 152
    const-string v23, "rtc_fec_max_media_packets"

    .line 153
    .line 154
    const-string v24, "rtc_fec_max_fec_packets"

    .line 155
    .line 156
    const-string v25, "rtc_nack_report_delay_time"

    .line 157
    .line 158
    const-string v26, "rtc_close_decoder_low_latency"

    .line 159
    .line 160
    const-string v27, "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception"

    .line 161
    .line 162
    const-string v28, "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception_model"

    .line 163
    .line 164
    const-string v29, "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception_model_exact"

    .line 165
    .line 166
    const-string v30, "rtc_rtcp_interval_time"

    .line 167
    .line 168
    const-string v31, "rtc_wait_for_frame_ms"

    .line 169
    .line 170
    const-string v32, "rtc_hwdecoder_buffer_mode"

    .line 171
    .line 172
    const-string v33, "rtc_nack_buffer_config_v2"

    .line 173
    .line 174
    const-string v34, "use_texture_cloning_flag"

    .line 175
    .line 176
    const-string v35, "rtc_bad_frame_detect_config"

    .line 177
    .line 178
    const-string v36, "rtc_image_adjustable"

    .line 179
    .line 180
    const-string v37, "rtc_brightness_ratio"

    .line 181
    .line 182
    const-string v38, "rtc_contrast_ratio"

    .line 183
    .line 184
    const-string v39, "rtc_saturation_ratio"

    .line 185
    .line 186
    const-string v40, "rtc_tv_x86_not_use_surface_render"

    .line 187
    .line 188
    const-string v41, "rtc_use_direct_surface_view"

    .line 189
    .line 190
    const-string v42, "rtc_use_direct_surface_view_exact"

    .line 191
    .line 192
    const-string v43, "rtc_enable_media_codec_output_dropping"

    .line 193
    .line 194
    const-string v44, "rtc_enable_media_codec_output_dropping_exact"

    .line 195
    .line 196
    const-string v45, "rtc_signalv2_signalv1delaytime"

    .line 197
    .line 198
    const-string v46, "rtc_enable_frame_interpolation"

    .line 199
    .line 200
    const-string v47, "rtc_first_frame_interpolation_interval"

    .line 201
    .line 202
    const-string v48, "rtc_following_frame_interpolation_interval"

    .line 203
    .line 204
    const-string v49, "rtc_frame_interpolation_top_limit"

    .line 205
    .line 206
    const-string v50, "rtc_enable_signalv1_dnsresolve_optimize"

    .line 207
    .line 208
    const-string v51, "rtc_download_audio_on"

    .line 209
    .line 210
    const-string v52, "rtc_download_video_on"

    .line 211
    .line 212
    const-string v53, "playout_delay_mode"

    .line 213
    .line 214
    const-string v54, "forced_playout_delay_min"

    .line 215
    .line 216
    const-string v55, "forced_playout_delay_max"

    .line 217
    .line 218
    const-string v56, "max_allowed_framebuffer_size_in_normal"

    .line 219
    .line 220
    const-string v57, "rtc_enable_turn_protocol"

    .line 221
    .line 222
    const-string v58, "rtc_enable_srtp_cipher_report"

    .line 223
    .line 224
    const-string v59, "rtc_enable_network_accelerate"

    .line 225
    .line 226
    const-string v60, "rtc_enable_switch_cellular_network"

    .line 227
    .line 228
    const-string v61, "rtc_udp_port_config"

    .line 229
    .line 230
    const-string v62, "rtc_stun_request_resend_config"

    .line 231
    .line 232
    const-string v63, "update_networks_continuable_on"

    .line 233
    .line 234
    filled-new-array/range {v1 .. v63}, [Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->configKeys:[Ljava/lang/String;

    .line 239
    .line 240
    const-string v1, "rtc_use_direct_surface_view_white_black_list"

    .line 241
    .line 242
    const-string v2, "rtc_use_direct_surface_view_v2"

    .line 243
    .line 244
    const-string v3, "rtc_enable_media_codec_output_dropping_white_black_list"

    .line 245
    .line 246
    const-string v4, "rtc_enable_media_codec_output_dropping_v2"

    .line 247
    .line 248
    const-string v5, "rtc_force_egl10"

    .line 249
    .line 250
    const-string v6, "rtc_force_egl10_v2"

    .line 251
    .line 252
    const-string v7, "rtc_egl_monochrome_off"

    .line 253
    .line 254
    const-string v8, "rtc_bad_frame_detect_config_v2"

    .line 255
    .line 256
    const-string v9, "rtc_bad_frame_detect_config_switch_v2"

    .line 257
    .line 258
    const-string v10, "hm_rtc_av_delay_sdk"

    .line 259
    .line 260
    const-string v11, "video_remote_resource_adaptation_on"

    .line 261
    .line 262
    const-string v12, "rtc_enable_surface_switch"

    .line 263
    .line 264
    const-string v13, "rtc_enable_weakly_net_report"

    .line 265
    .line 266
    const-string v14, "rtc_upload_audio_config"

    .line 267
    .line 268
    const-string v15, "rtc_no_output_long_time"

    .line 269
    .line 270
    const-string v16, "rtc_smooth_decoding"

    .line 271
    .line 272
    const-string v17, "rtc_enable_frame_interpolation_v2"

    .line 273
    .line 274
    const-string v18, "rtc_operation_delay_sdk"

    .line 275
    .line 276
    const-string v19, "rtc_enable_remove_sei"

    .line 277
    .line 278
    const-string v20, "rtc_prefer_video_codec"

    .line 279
    .line 280
    const-string v21, "rtc_enable_encoder_h264_hp"

    .line 281
    .line 282
    const-string v22, "rtc_enable_video_frame_elapsed_time_report"

    .line 283
    .line 284
    const-string v23, "rtc_enable_media_codec_video_decoder_low_latency"

    .line 285
    .line 286
    const-string v24, "rtc_enable_share_streaming"

    .line 287
    .line 288
    const-string v25, "rtc_enable_image_enhancement"

    .line 289
    .line 290
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->newConfigKeys:[Ljava/lang/String;

    .line 295
    .line 296
    const-string v0, "rtc_force_H264_format_v2"

    .line 297
    .line 298
    const-string v1, "rtc_enable_cache_decoders"

    .line 299
    .line 300
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->newConfigKeysWithNoCid:[Ljava/lang/String;

    .line 305
    .line 306
    const-string v0, "rtc_trial_config"

    .line 307
    .line 308
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->KEY_RTC_FIELD_TRIALS:Ljava/lang/String;

    .line 309
    .line 310
    const-string v0, "rtc_trial_config_fec"

    .line 311
    .line 312
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->KEY_RTC_FIELD_FEC_TRIALS:Ljava/lang/String;

    .line 313
    .line 314
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static dropClientCandidate(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->dropClientCandidateConfig:Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;->roomID:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->dropClientCandidateConfig:Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;

    .line 16
    .line 17
    iget-boolean p0, p0, Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;->opened:Z

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    new-instance v0, Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;

    .line 21
    .line 22
    sget v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->drop_client_candidate_percent:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const-string v3, "drop_client_candidate"

    .line 26
    .line 27
    invoke-direct {v0, p0, v3, v1, v2}, Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->dropClientCandidateConfig:Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;

    .line 31
    .line 32
    iget-boolean p0, v0, Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;->opened:Z

    .line 33
    .line 34
    return p0
.end method

.method public static enableSurfaceRender(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSurfaceRender:Z

    .line 2
    .line 3
    return-void
.end method

.method public static getCloudRtcFieldTrials()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public static getConnectionPingInterval()I
    .locals 1

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->iceStableWritableConnectionPingInterval:I

    .line 2
    .line 3
    return v0
.end method

.method private static getCpuName()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 3
    .line 4
    const-string v2, "/proc/cpuinfo"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    .line 8
    .line 9
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    .line 13
    .line 14
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    const-string v4, "Hardware"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    move-object v0, v3

    .line 29
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 33
    .line 34
    .line 35
    goto :goto_5

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    nop

    .line 39
    goto :goto_3

    .line 40
    :catchall_1
    move-exception v2

    .line 41
    move-object v5, v2

    .line 42
    move-object v2, v0

    .line 43
    move-object v0, v5

    .line 44
    goto :goto_1

    .line 45
    :catch_2
    nop

    .line 46
    move-object v2, v0

    .line 47
    goto :goto_3

    .line 48
    :catchall_2
    move-exception v1

    .line 49
    move-object v2, v0

    .line 50
    move-object v0, v1

    .line 51
    move-object v1, v2

    .line 52
    :goto_1
    if-eqz v2, :cond_2

    .line 53
    .line 54
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catch_3
    nop

    .line 59
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 60
    .line 61
    :try_start_6
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 62
    .line 63
    .line 64
    :catch_4
    :cond_3
    throw v0

    .line 65
    :catch_5
    nop

    .line 66
    move-object v1, v0

    .line 67
    move-object v2, v1

    .line 68
    :goto_3
    if-eqz v2, :cond_4

    .line 69
    .line 70
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :catch_6
    nop

    .line 75
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_7
    :cond_5
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "CPU: "

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ", OS version: "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "HmRtcGlobalConfig"

    .line 106
    .line 107
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-object v0
.end method

.method public static getDebugModeTagList()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->getDebugTagList()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getHMRTCValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mHMRTCloudConfig:Ljava/util/Map;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->mHMRTCloudConfig:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    return-object p1
.end method

.method public static getHMRTCValueNativeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mHMRTCloudConfig:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getHmBadFrameDetectConfigParams()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmBadFrameDetectConfigParams:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getHmConstSmoothFps()I
    .locals 1

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->hm_const_smoothfps:I

    .line 2
    .line 3
    return v0
.end method

.method public static getIceUnwritableMinChecks()I
    .locals 1

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->iceUnwritableMinChecks:I

    .line 2
    .line 3
    return v0
.end method

.method public static getIceUnwritableTimeMs()I
    .locals 1

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->iceUnwritableTimeMs:I

    .line 2
    .line 3
    return v0
.end method

.method public static getRtcMaxFecPackets()I
    .locals 2

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxFecPackets:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public static getRtcMaxMediaPackets()I
    .locals 2

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxMediaPackets:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public static isFlexFecOpen()Z
    .locals 1

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOpenFlexFEC:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public static isLowPerformanceDevice()Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v4, "qcom"

    .line 19
    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    xor-int/2addr v1, v3

    .line 25
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v5, v4

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x1

    .line 30
    :goto_1
    if-ge v6, v5, :cond_2

    .line 31
    .line 32
    aget-object v8, v4, v6

    .line 33
    .line 34
    if-eqz v8, :cond_1

    .line 35
    .line 36
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-lez v8, :cond_1

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-nez v0, :cond_3

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    if-eqz v7, :cond_4

    .line 51
    .line 52
    :cond_3
    const/4 v2, 0x1

    .line 53
    :cond_4
    return v2
.end method

.method private static matchCPU(Ljava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Filter CPU for useShareContext: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HmRtcGlobalConfig"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getCpuName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    .line 34
    .line 35
    return p0

    .line 36
    :cond_0
    const-string v1, "]"

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    array-length v1, p0

    .line 43
    if-gtz v1, :cond_1

    .line 44
    .line 45
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    .line 46
    .line 47
    return p0

    .line 48
    :cond_1
    array-length v1, p0

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    :goto_0
    if-ge v3, v1, :cond_6

    .line 52
    .line 53
    aget-object v4, p0, v3

    .line 54
    .line 55
    const-string v5, "["

    .line 56
    .line 57
    const-string v6, ""

    .line 58
    .line 59
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-string v5, ","

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    array-length v5, v4

    .line 77
    const/4 v6, 0x2

    .line 78
    if-ge v5, v6, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    aget-object v5, v4, v2

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_5

    .line 92
    .line 93
    const/4 v5, 0x1

    .line 94
    aget-object v4, v4, v5

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-lez v4, :cond_5

    .line 105
    .line 106
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 107
    .line 108
    if-gt v6, v4, :cond_5

    .line 109
    .line 110
    const/16 p0, 0x16

    .line 111
    .line 112
    if-gt v6, p0, :cond_4

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    :cond_4
    return v2

    .line 116
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    .line 120
    .line 121
    return p0
.end method

.method private static matchModel(ZLjava/lang/String;ZZ)Z
    .locals 9

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ","

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "Filter Model for useShareContext: "

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v4, ", "

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ", Model: "

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, ", os level: "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "HmRtcGlobalConfig"

    .line 55
    .line 56
    invoke-static {v4, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    return p2

    .line 66
    :cond_0
    const-string v3, "]"

    .line 67
    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    array-length v3, p1

    .line 73
    if-gtz v3, :cond_1

    .line 74
    .line 75
    return p2

    .line 76
    :cond_1
    array-length v3, p1

    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    :goto_0
    if-ge v5, v3, :cond_6

    .line 80
    .line 81
    aget-object v6, p1, v5

    .line 82
    .line 83
    const-string v7, "["

    .line 84
    .line 85
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    array-length v7, v6

    .line 101
    const/4 v8, 0x2

    .line 102
    if-ge v7, v8, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const/4 v7, 0x1

    .line 106
    if-eqz p3, :cond_4

    .line 107
    .line 108
    aget-object v8, v6, v4

    .line 109
    .line 110
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_5

    .line 119
    .line 120
    aget-object v6, v6, v7

    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-lez v6, :cond_5

    .line 131
    .line 132
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    .line 134
    if-gt v7, v6, :cond_5

    .line 135
    .line 136
    return p0

    .line 137
    :cond_4
    aget-object v8, v6, v4

    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_5

    .line 148
    .line 149
    aget-object v6, v6, v7

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-lez v6, :cond_5

    .line 160
    .line 161
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .line 163
    if-gt v7, v6, :cond_5

    .line 164
    .line 165
    return p0

    .line 166
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_6
    return p2
.end method

.method private static matchSurfaceRender(Ljava/lang/String;)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Filter Model for useSurfaceRender : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HmRtcGlobalConfig"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const-string p0, "model is empty"

    .line 33
    .line 34
    invoke-static {v1, p0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    const-string v2, "]"

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    array-length v2, p0

    .line 45
    if-gtz v2, :cond_1

    .line 46
    .line 47
    return v3

    .line 48
    :cond_1
    array-length v2, p0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_0
    if-ge v5, v2, :cond_5

    .line 52
    .line 53
    aget-object v6, p0, v5

    .line 54
    .line 55
    const-string v7, "["

    .line 56
    .line 57
    const-string v8, ""

    .line 58
    .line 59
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-string v7, ","

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    array-length v7, v6

    .line 77
    const/4 v9, 0x2

    .line 78
    if-lt v7, v9, :cond_4

    .line 79
    .line 80
    aget-object v7, v6, v4

    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-string v7, " "

    .line 90
    .line 91
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    aget-object v10, v6, v4

    .line 96
    .line 97
    invoke-virtual {v10, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    aget-object v6, v6, v3

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-lez v6, :cond_4

    .line 118
    .line 119
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    if-ne v7, v6, :cond_4

    .line 122
    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v2, "match success , disable use surfaceRender , model name is "

    .line 129
    .line 130
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, ",osVersion is "

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {v1, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return v4

    .line 152
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_5
    return v3
.end method

.method public static openH265()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->h265Switch:Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "HmRtcGlobalConfig"

    .line 6
    .line 7
    const-string v1, "H265 config is null, default is close."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-boolean v0, v0, Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;->opened:Z

    .line 15
    .line 16
    return v0
.end method

.method public static parseAudioUploadConfig(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "disable_webrtc_agc_and_hpf"

    .line 2
    .line 3
    const-string v1, "disable_builtin_ns"

    .line 4
    .line 5
    const-string v2, "disable_builtin_agc"

    .line 6
    .line 7
    const-string v3, "disable_builtin_aec"

    .line 8
    .line 9
    const-string v4, "no_audio_processing"

    .line 10
    .line 11
    const-string v5, ".*switches\\s*:\\s*(\\{.+\\}).*"

    .line 12
    .line 13
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_5

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->no_audio_processing:Z

    .line 49
    .line 50
    :goto_0
    sput-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->no_audio_processing:Z

    .line 51
    .line 52
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_aec:Z

    .line 64
    .line 65
    :goto_1
    sput-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_aec:Z

    .line 66
    .line 67
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_agc:Z

    .line 79
    .line 80
    :goto_2
    sput-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_agc:Z

    .line 81
    .line 82
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_ns:Z

    .line 94
    .line 95
    :goto_3
    sput-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_ns:Z

    .line 96
    .line 97
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_4

    .line 102
    .line 103
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    goto :goto_4

    .line 108
    :cond_4
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_webrtc_agc_and_hpf:Z

    .line 109
    .line 110
    :goto_4
    sput-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_webrtc_agc_and_hpf:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v0, "parseAudioUploadConfig, audio_processing: "

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->no_audio_processing:Z

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, ", aec: "

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_aec:Z

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, ", agc: "

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_agc:Z

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, ", ns: "

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_ns:Z

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v0, ", w_a_h: "

    .line 163
    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_webrtc_agc_and_hpf:Z

    .line 168
    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    const-string v0, "HmRtcGlobalConfig"

    .line 177
    .line 178
    invoke-static {v0, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method private static parseCloudRtcFieldTrials(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->KEY_RTC_FIELD_TRIALS:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->KEY_RTC_FIELD_TRIALS:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    if-eqz p0, :cond_3

    .line 22
    .line 23
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->KEY_RTC_FIELD_FEC_TRIALS:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/16 v1, 0x2f

    .line 46
    .line 47
    if-ne v0, v1, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->KEY_RTC_FIELD_FEC_TRIALS:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sput-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    sget-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->KEY_RTC_FIELD_FEC_TRIALS:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    sput-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->KEY_RTC_FIELD_FEC_TRIALS:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Ljava/lang/String;

    .line 115
    .line 116
    sput-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 117
    .line 118
    :cond_3
    :goto_0
    sget-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 119
    .line 120
    if-nez p0, :cond_4

    .line 121
    .line 122
    const-string p0, ""

    .line 123
    .line 124
    sput-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 125
    .line 126
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v0, "RtcConfig FieldTrials: "

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mCloudRtcFieldTrials:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    const-string v0, "HmRtcGlobalConfig"

    .line 146
    .line 147
    invoke-static {v0, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method private static parseDebugModeParam(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    const-string v0, "hm_rtc_sdk_debug"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    new-instance v1, Lorg/webrtc/haima/HmRtcSdkDebugCfg;

    .line 18
    .line 19
    invoke-direct {v1, v0, p1}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->mHmRtcSdkDebugCfg:Lorg/webrtc/haima/HmRtcSdkDebugCfg;

    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    sget-object p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->mHmRtcSdkDebugCfg:Lorg/webrtc/haima/HmRtcSdkDebugCfg;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lorg/webrtc/haima/HmRtcSdkDebugCfg;->rebuildRtcCfgParam(Ljava/util/HashMap;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    return v2
.end method

.method public static parseHmNewRtcConfig()V
    .locals 10

    .line 70
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfigWithNoCid:Ljava/util/Map;

    const-string v1, "HmRtcGlobalConfig"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 71
    :cond_0
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->newConfigKeysWithNoCid:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 72
    sget-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfigWithNoCid:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 74
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseHmNewRtcConfig: key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v6, "rtc_force_H264_format_v2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " enable:"

    const-string v8, "parseHmNewRtcConfig:"

    if-nez v6, :cond_3

    const-string v6, "rtc_enable_cache_decoders"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 76
    :cond_2
    new-instance v6, Lorg/webrtc/haima/HmCacheDecodersConfig;

    invoke-direct {v6, v4, v5}, Lorg/webrtc/haima/HmCacheDecodersConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v6}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v1, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v4

    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableCacheDecoders:Z

    .line 81
    invoke-virtual {v6}, Lorg/webrtc/haima/HmCacheDecodersConfig;->getTimeout()I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->cacheDecodersTimeout:I

    goto :goto_1

    .line 82
    :cond_3
    new-instance v6, Lorg/webrtc/haima/HmRtcSdkCloudCfg;

    const-string v9, ""

    invoke-direct {v6, v4, v5, v9}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v6}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-static {v1, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v6}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v4

    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceH264Format:Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 87
    :cond_4
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfigWithNoCid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfigWithNoCid:Ljava/util/Map;

    return-void

    :cond_5
    :goto_2
    const-string v0, "parseHmNewRtcConfig: newConfigMaps is null or empty"

    .line 89
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parseHmNewRtcConfig(Ljava/lang/String;)V
    .locals 15

    const-string v0, "HmRtcGlobalConfig"

    if-eqz p0, :cond_20

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfig:Ljava/util/Map;

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->setCloudId(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->newConfigKeys:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1d

    aget-object v5, v1, v4

    .line 5
    sget-object v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfig:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseHmNewRtcConfig: key :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v7, Lorg/webrtc/haima/HmRtcSdkCloudCfg;

    invoke-direct {v7, v5, v6, p0}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseHmNewRtcConfig:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " enable:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",configured scope cloudId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;->getCidTailNum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", in-service (use) cloudId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-static {v0, v8}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v8, Lorg/hmwebrtc/utils/FiledStringParser;

    invoke-direct {v8, v6}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, -0x1

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v9, "rtc_enable_media_codec_video_decoder_low_latency"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v12, 0x18

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "rtc_force_egl10_v2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v12, 0x17

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "rtc_enable_remove_sei"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v12, 0x16

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "rtc_force_egl10"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v12, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "video_remote_resource_adaptation_on"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v12, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v9, "rtc_enable_share_streaming"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v12, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v9, "rtc_operation_delay_sdk"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v12, 0x12

    goto/16 :goto_1

    :sswitch_7
    const-string v9, "rtc_enable_video_frame_elapsed_time_report"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v12, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string v9, "hm_rtc_av_delay_sdk"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v12, 0x10

    goto/16 :goto_1

    :sswitch_9
    const-string v9, "rtc_enable_weakly_net_report"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v12, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v9, "rtc_enable_surface_switch"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v12, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v9, "rtc_use_direct_surface_view_white_black_list"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v12, 0xd

    goto/16 :goto_1

    :sswitch_c
    const-string v9, "rtc_enable_encoder_h264_hp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v12, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v9, "rtc_egl_monochrome_off"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v12, 0xb

    goto/16 :goto_1

    :sswitch_e
    const-string v9, "rtc_enable_get_wifi_ssid_default"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v12, 0xa

    goto/16 :goto_1

    :sswitch_f
    const-string v9, "rtc_bad_frame_detect_config_switch_v2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v12, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v9, "rtc_upload_audio_config"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v12, 0x8

    goto/16 :goto_1

    :sswitch_11
    const-string v9, "rtc_enable_media_codec_output_dropping_white_black_list"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    goto :goto_1

    :cond_14
    const/4 v12, 0x7

    goto :goto_1

    :sswitch_12
    const-string v9, "rtc_enable_media_codec_output_dropping_v2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto :goto_1

    :cond_15
    const/4 v12, 0x6

    goto :goto_1

    :sswitch_13
    const-string v9, "rtc_use_direct_surface_view_v2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto :goto_1

    :cond_16
    const/4 v12, 0x5

    goto :goto_1

    :sswitch_14
    const-string v9, "rtc_prefer_video_codec"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto :goto_1

    :cond_17
    const/4 v12, 0x4

    goto :goto_1

    :sswitch_15
    const-string v9, "rtc_enable_frame_interpolation_v2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto :goto_1

    :cond_18
    const/4 v12, 0x3

    goto :goto_1

    :sswitch_16
    const-string v9, "rtc_smooth_decoding"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    goto :goto_1

    :cond_19
    const/4 v12, 0x2

    goto :goto_1

    :sswitch_17
    const-string v9, "rtc_enable_image_enhancement"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto :goto_1

    :cond_1a
    const/4 v12, 0x1

    goto :goto_1

    :sswitch_18
    const-string v9, "rtc_no_output_long_time"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    goto :goto_1

    :cond_1b
    const/4 v12, 0x0

    :goto_1
    const-string v9, ""

    const/16 v13, 0x1e

    const-string v14, ": "

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_2

    .line 14
    :pswitch_0
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecVideoDecoderLowLatency:Z

    goto/16 :goto_2

    .line 15
    :pswitch_1
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableRemoveSei:Z

    goto/16 :goto_2

    .line 16
    :pswitch_2
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcForceEgl10:Z

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v6

    sput-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->videoRemoteResourceAdaptationOn:Z

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->videoRemoteResourceAdaptationOn:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :pswitch_4
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableShareStreaming:Z

    goto/16 :goto_2

    .line 20
    :pswitch_5
    sget-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v7

    iput-boolean v7, v5, Lorg/webrtc/haima/HMRTConfig;->mEnable:Z

    .line 21
    sget-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmOperationDelayConfig;->parseConfig(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 22
    :pswitch_6
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableVideoFrameElapsedTimeReport:Z

    goto/16 :goto_2

    .line 23
    :pswitch_7
    sget-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v7

    iput-boolean v7, v5, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->enable:Z

    .line 24
    sget-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    iget-boolean v5, v5, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->enable:Z

    if-eqz v5, :cond_1c

    .line 25
    new-instance v5, Lorg/webrtc/haima/HmAVDelayCloudConfig;

    invoke-direct {v5}, Lorg/webrtc/haima/HmAVDelayCloudConfig;-><init>()V

    .line 26
    sget-object v7, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    invoke-virtual {v5, v6, v7}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->parseAVDelayCloudConfig(Ljava/lang/String;Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;)V

    goto/16 :goto_2

    .line 27
    :pswitch_8
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetReport:Z

    .line 28
    invoke-virtual {v7}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;->isEnableDebugLog()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    goto/16 :goto_2

    .line 29
    :pswitch_9
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v6

    sput-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSurfaceSwitch:Z

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSurfaceSwitch:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 31
    :pswitch_a
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableEncoderH264HP:Z

    goto/16 :goto_2

    .line 32
    :pswitch_b
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEglMonochromeOff:Z

    goto/16 :goto_2

    .line 33
    :pswitch_c
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableGetWifiSsidDefault:Z

    goto/16 :goto_2

    .line 34
    :pswitch_d
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcBadFrameDetectConfigSwitchV2:Z

    .line 35
    sget-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmBadFrameDetectConfigParams:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RTC_HM_BAD_FRAME_DETECT_CONFIG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmBadFrameDetectConfigParams:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reset to empty."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sput-object v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmBadFrameDetectConfigParams:Ljava/lang/String;

    goto/16 :goto_2

    .line 38
    :pswitch_e
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 39
    invoke-static {v6}, Lorg/webrtc/haima/HmRtcGlobalConfig;->parseAudioUploadConfig(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 40
    :pswitch_f
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    goto/16 :goto_2

    .line 41
    :pswitch_10
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v6

    sput-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 43
    :pswitch_11
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "codec_type"

    .line 44
    invoke-virtual {v8, v5, v9}, Lorg/hmwebrtc/utils/FiledStringParser;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcPreferVideoCodec:Ljava/lang/String;

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cloud configured rtcPreferVideoCodec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcPreferVideoCodec:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 46
    :pswitch_12
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableFrameInterpolation:Z

    const-string v5, "first_interval"

    const/16 v6, 0x64

    .line 47
    invoke-virtual {v8, v5, v6}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFirstFrameInterpolationInterval:I

    const-string v5, "following_interval"

    const/16 v6, 0x21

    .line 48
    invoke-virtual {v8, v5, v6}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFollowingFrameInterpolationInterval:I

    const-string v5, "top_limit"

    const v6, 0x7fffffff

    .line 49
    invoke-virtual {v8, v5, v6}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFrameInterpolationTopLimit:I

    goto :goto_2

    .line 50
    :pswitch_13
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSmoothlyDecoding:Z

    .line 51
    invoke-virtual {v7}, Lorg/webrtc/haima/HmRtcSdkCloudCfg;->isEnableDebugLog()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSmoothlyDecodingDebug:Z

    const-string v5, "min_buffers"

    .line 52
    invoke-virtual {v8, v5, v10}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMinDecoderBuffers:I

    const-string v5, "max_buffers"

    const/16 v6, 0x3c

    .line 53
    invoke-virtual {v8, v5, v6}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMaxDecoderBuffers:I

    const-string v5, "min_wait_delay"

    .line 54
    invoke-virtual {v8, v5, v11}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMinWaitDelay:I

    const-string v5, "max_wait_delay"

    .line 55
    invoke-virtual {v8, v5, v13}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMaxWaitDelay:I

    goto :goto_2

    .line 56
    :pswitch_14
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableImageEnhancement:Z

    const-string v5, "strength"

    const/16 v6, 0x96

    .line 57
    invoke-virtual {v8, v5, v6}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcImageEnhancementStrength:I

    goto :goto_2

    .line 58
    :pswitch_15
    invoke-virtual {v7}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableNoOutputLongTimeRequestKeyFrame:Z

    const-string v5, "interval"

    const/16 v6, 0x7d0

    .line 59
    invoke-virtual {v8, v5, v6}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNoOutputFramesIntervalMs:I

    const-string v5, "threshold"

    .line 60
    invoke-virtual {v8, v5, v13}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNumOfNotDecodedFramesThreshold:I

    :cond_1c
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 61
    :cond_1d
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcBadFrameDetectConfigSwitchV2:Z

    if-eqz p0, :cond_1e

    .line 62
    sget-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfig:Ljava/util/Map;

    const-string v1, "rtc_bad_frame_detect_config_v2"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 64
    sput-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmBadFrameDetectConfigParams:Ljava/lang/String;

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " RTC_HM_BAD_FRAME_DETECT_CONFIG_V2: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmBadFrameDetectConfigParams:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1e
    sget-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfig:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const/4 p0, 0x0

    .line 67
    sput-object p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfig:Ljava/util/Map;

    return-void

    :cond_1f
    :goto_3
    const-string p0, "parseHmNewRtcConfig: newConfigMaps is null or empty"

    .line 68
    invoke-static {v0, p0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    :goto_4
    const-string p0, "parseHmNewRtcConfig: cloudId is null or empty"

    .line 69
    invoke-static {v0, p0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x678ccb2e -> :sswitch_18
        -0x6421eb76 -> :sswitch_17
        -0x4a7ba742 -> :sswitch_16
        -0x4a293799 -> :sswitch_15
        -0x466a01bf -> :sswitch_14
        -0x356a953c -> :sswitch_13
        -0x1d40f602 -> :sswitch_12
        -0x390c94a -> :sswitch_11
        -0x32c595 -> :sswitch_10
        0x499fedc -> :sswitch_f
        0x15f17520 -> :sswitch_e
        0x205034c0 -> :sswitch_d
        0x2e39d85e -> :sswitch_c
        0x3d51c4fc -> :sswitch_b
        0x3e3e59e4 -> :sswitch_a
        0x4959fbf2 -> :sswitch_9
        0x4b2de90c -> :sswitch_8
        0x58e354ef -> :sswitch_7
        0x598cf3c8 -> :sswitch_6
        0x667c74e4 -> :sswitch_5
        0x6bfd456f -> :sswitch_4
        0x6c031477 -> :sswitch_3
        0x79f0dffa -> :sswitch_2
        0x7a6bf744 -> :sswitch_1
        0x7f5eb1f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static parseRtcConfig(Ljava/util/HashMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 5
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_debug_mode:Z

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->resetConfigValues()V

    .line 7
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/webrtc/haima/HmRtcGlobalConfig;->parseUploadVideoParam(Ljava/util/HashMap;)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "HMRTC_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    sget-object v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->mHMRTCloudConfig:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    sget-object v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->newConfigKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    const-string v6, ",value:"

    const-string v7, "HmRtcGlobalConfig"

    if-ge v5, v3, :cond_4

    aget-object v8, v2, v5

    .line 12
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 13
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    sget-object v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfig:Ljava/util/Map;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new rtc config, key:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_4
    sget-object v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->newConfigKeysWithNoCid:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_6

    aget-object v8, v2, v5

    .line 17
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 18
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    .line 19
    :cond_5
    sget-object v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfigWithNoCid:Ljava/util/Map;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new rtc config with no cid, key:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 21
    :cond_6
    sget-object v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->configKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_5
    const-string v6, " to or not to enable mediaCodec output dropping:"

    const-string v8, " to or not to use SurfaceView directly to render MediaCodec\'s decoded data:"

    const-string v12, "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception_model"

    const-string v13, "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception_model_exact"

    const/4 v10, 0x1

    if-ge v5, v3, :cond_1b

    aget-object v11, v2, v5

    .line 22
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    .line 23
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    goto/16 :goto_16

    .line 24
    :cond_7
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "open_h265"

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    :try_start_1
    const-string v12, "rtc_nack_report_delay_time"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x14

    goto/16 :goto_7

    :sswitch_1
    const-string v12, "rtc_contrast_ratio"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x1c

    goto/16 :goto_7

    :sswitch_2
    const-string v12, "rtc_frame_info_match_by_pts"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0xc

    goto/16 :goto_7

    :sswitch_3
    const-string v12, "rtc_brightness_ratio"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x1b

    goto/16 :goto_7

    :sswitch_4
    const-string v12, "rtc_hwdecoder_buffer_mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x17

    goto/16 :goto_7

    :sswitch_5
    const-string v12, "rtc_bad_frame_detect_config"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x19

    goto/16 :goto_7

    :sswitch_6
    const-string v12, "rtc_image_adjustable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x1a

    goto/16 :goto_7

    :sswitch_7
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x2

    goto/16 :goto_7

    :sswitch_8
    const-string v12, "rtc_download_video_on"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x29

    goto/16 :goto_7

    :sswitch_9
    const-string v12, "playout_delay_mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x2b

    goto/16 :goto_7

    :sswitch_a
    const-string v12, "rtc_open_fec"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x11

    goto/16 :goto_7

    :sswitch_b
    const-string v12, "use_texture_cloning_flag"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0xa

    goto/16 :goto_7

    :sswitch_c
    const-string v12, "rtc_download_audio_on"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x28

    goto/16 :goto_7

    :sswitch_d
    const-string v12, "forced_playout_delay_min"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x2c

    goto/16 :goto_7

    :sswitch_e
    const-string v12, "forced_playout_delay_max"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x2d

    goto/16 :goto_7

    :sswitch_f
    const-string v12, "rtc_frame_interpolation_top_limit"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x24

    goto/16 :goto_7

    :sswitch_10
    const-string v12, "hm_const_smoothfps"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x4

    goto/16 :goto_7

    :sswitch_11
    const-string v12, "rtc_first_frame_interpolation_interval"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x22

    goto/16 :goto_7

    :sswitch_12
    const-string v12, "rtc_fec_max_fec_packets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x12

    goto/16 :goto_7

    :sswitch_13
    const-string v12, "rtc_enable_switch_cellular_network"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x32

    goto/16 :goto_7

    :sswitch_14
    const-string v12, "port7681_datachannel_policy"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0xe

    goto/16 :goto_7

    :sswitch_15
    const-string v12, "rtc_frame_buffer_size_limit"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0xb

    goto/16 :goto_7

    :sswitch_16
    const-string v12, "conn_ping_interval_ms"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x3

    goto/16 :goto_7

    :sswitch_17
    const-string v12, "rtc_tv_x86_not_use_surface_render"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto/16 :goto_7

    :sswitch_18
    const-string v12, "rtc_enable_network_accelerate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x31

    goto/16 :goto_7

    :sswitch_19
    const-string v12, "rtc_enable_frame_interpolation"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x21

    goto/16 :goto_7

    :sswitch_1a
    const-string v12, "port7682_datachannel_policy"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0xf

    goto/16 :goto_7

    :sswitch_1b
    const-string v12, "rtc_open_flexfec"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x10

    goto/16 :goto_7

    :sswitch_1c
    const-string v12, "rtc_enable_srtp_cipher_report"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x30

    goto/16 :goto_7

    :sswitch_1d
    const-string v12, "unwritable_min_checks"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x6

    goto/16 :goto_7

    :sswitch_1e
    const-string v12, "rtc_enable_signalv1_dnsresolve_optimize"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x2f

    goto/16 :goto_7

    :sswitch_1f
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x26

    goto/16 :goto_7

    :sswitch_20
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x27

    goto/16 :goto_7

    :sswitch_21
    const-string v12, "rtc_saturation_ratio"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x1d

    goto/16 :goto_7

    :sswitch_22
    const-string v12, "rtc_fec_max_media_packets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x13

    goto/16 :goto_7

    :sswitch_23
    const-string v12, "max_allowed_framebuffer_size_in_normal"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x2e

    goto/16 :goto_7

    :sswitch_24
    const-string v12, "rtc_wait_for_frame_ms"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x16

    goto/16 :goto_7

    :sswitch_25
    const-string v12, "rtc_signalv2_signalv1delaytime"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x20

    goto/16 :goto_7

    :sswitch_26
    const-string v12, "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x25

    goto/16 :goto_7

    :sswitch_27
    const-string v12, "update_networks_continuable_on"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x2a

    goto/16 :goto_7

    :sswitch_28
    const-string v12, "rtc_nack_buffer_config_v2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x18

    goto/16 :goto_7

    :sswitch_29
    const-string v12, "rtc_enable_media_codec_output_dropping"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x1f

    goto :goto_7

    :sswitch_2a
    const-string v12, "not_use_shared_context_over_android6"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x8

    goto :goto_7

    :sswitch_2b
    const-string v12, "rtc_rtcp_interval_time"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x15

    goto :goto_7

    :sswitch_2c
    const-string v12, "rtc_use_direct_surface_view"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x1e

    goto :goto_7

    :sswitch_2d
    const-string v12, "rtc_following_frame_interpolation_interval"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x23

    goto :goto_7

    :sswitch_2e
    const-string v12, "drop_client_candidate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    goto :goto_7

    :sswitch_2f
    const-string v12, "rtc_datachannel_enabled_percent_v2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0xd

    goto :goto_7

    :sswitch_30
    const-string v12, "rtc_use_software_decoder_via_model"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x9

    goto :goto_7

    :sswitch_31
    const-string v12, "use_shared_context_less_android6"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x7

    goto :goto_7

    :sswitch_32
    const-string v12, "unwritable_timeout_ms"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v12, :cond_8

    const/4 v12, 0x5

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v12, -0x1

    :goto_7
    const-string v13, ", sharedContext will be set: "

    const-string v4, ": "

    const-string v9, "OS version is : "

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_15

    .line 25
    :pswitch_0
    :try_start_2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_9

    goto :goto_8

    :cond_9
    const/4 v10, 0x0

    :goto_8
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSwitchCellularNetwork:Z

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_ENABLE_SWITCH_CELLULAR_NETWORK:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSwitchCellularNetwork:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 27
    :pswitch_1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_a

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    :goto_9
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableNetworkAccelerate:Z

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_ENABLE_NETWORK_ACCELERATE:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableNetworkAccelerate:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 29
    :pswitch_2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_b

    goto :goto_a

    :cond_b
    const/4 v10, 0x0

    :goto_a
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSrtpCipherReport:Z

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_ENABLE_SRTP_CIPHER_REPORT:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSrtpCipherReport:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 31
    :pswitch_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_c

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    :goto_b
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSignalv1DnsResolveOptimize:Z

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_ENABLE_SIGNALV1_DNSRESOLVE_OPTIMIZE:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSignalv1DnsResolveOptimize:Z

    if-eqz v6, :cond_d

    const-string v6, "true"

    goto :goto_c

    :cond_d
    const-string v6, "false"

    :goto_c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 33
    :pswitch_4
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1a

    .line 34
    sput v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->max_allowed_framebuffer_size_in_normal:I

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->max_allowed_framebuffer_size_in_normal:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 36
    :pswitch_5
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1a

    .line 37
    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->forced_playout_delay_max:I

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FORCED_PLAYOUT_DELAY_MAX: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->forced_playout_delay_max:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 39
    :pswitch_6
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1a

    .line 40
    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->forced_playout_delay_min:I

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FORCED_PLAYOUT_DELAY_MIN: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->forced_playout_delay_min:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 42
    :pswitch_7
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_e

    if-eq v4, v10, :cond_e

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1a

    .line 43
    :cond_e
    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->playout_delay_mode:I

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PLAYOUT_DELAY_MODE: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->playout_delay_mode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 45
    :pswitch_8
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_f

    goto :goto_d

    :cond_f
    const/4 v10, 0x0

    :goto_d
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->updateNeworksContinuableOn:Z

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->updateNeworksContinuableOn:Z

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 47
    :pswitch_9
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_10

    goto :goto_e

    :cond_10
    const/4 v10, 0x0

    :goto_e
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_download_video_on:Z

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_DOWNLOAD_VIDEO_ON:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_download_video_on:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 49
    :pswitch_a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_11

    goto :goto_f

    :cond_11
    const/4 v10, 0x0

    :goto_f
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_download_audio_on:Z

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_DOWNLOAD_AUDIO_ON:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_download_audio_on:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 51
    :pswitch_b
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_12

    goto :goto_10

    :cond_12
    const/4 v10, 0x0

    :goto_10
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 53
    :pswitch_c
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFrameInterpolationTopLimit:I

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_FRAME_INTERPOLATION_TOP_LIMIT:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFrameInterpolationTopLimit:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 55
    :pswitch_d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFollowingFrameInterpolationInterval:I

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_FOLLOWING_FRAME_INTERPOLATION_INTERVAL:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFollowingFrameInterpolationInterval:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 57
    :pswitch_e
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFirstFrameInterpolationInterval:I

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_FIRST_FRAME_INTERPOLATION_INTERVAL:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFirstFrameInterpolationInterval:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 59
    :pswitch_f
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_13

    goto :goto_11

    :cond_13
    const/4 v10, 0x0

    :goto_11
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableFrameInterpolation:Z

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_ENABLE_FRAME_INTERPOLATION:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableFrameInterpolation:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 61
    :pswitch_10
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_signalv2_signalv1delaytime:I

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "signalv2 timeout:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_signalv2_signalv1delaytime:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 63
    :pswitch_11
    sget-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    const/4 v8, 0x0

    invoke-static {v10, v15, v4, v8}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v4

    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 65
    :pswitch_12
    sget-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    const/4 v6, 0x0

    invoke-static {v10, v15, v4, v6}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v4

    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 67
    :pswitch_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_IMAGE_SATURATION_RATIO:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSaturationRatio:F

    goto/16 :goto_16

    .line 69
    :pswitch_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_IMAGE_CONTRAST_RATIO:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcContrastRatio:F

    goto/16 :goto_16

    .line 71
    :pswitch_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_IMAGE_BRIGHTNESS_RATIO:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcBrightnessRatio:F

    goto/16 :goto_16

    .line 73
    :pswitch_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtcImageAdjustable:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    .line 74
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcImageAdjustable:Z

    goto/16 :goto_16

    .line 75
    :pswitch_17
    sput-object v15, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmBadFrameDetectConfigParams:Ljava/lang/String;

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTC_HM_BAD_FRAME_DETECT_CONFIG: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmBadFrameDetectConfigParams:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :pswitch_18
    const-string v4, "-"

    .line 77
    invoke-virtual {v15, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 78
    array-length v6, v4

    const/4 v9, 0x3

    if-ne v6, v9, :cond_1a

    const/4 v6, 0x0

    .line 79
    aget-object v8, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmNackBufferLimit:I

    .line 80
    aget-object v6, v4, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmNackBufferSalt:I

    const/4 v6, 0x2

    .line 81
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmNackBufferForceLimit:I

    goto/16 :goto_16

    .line 82
    :pswitch_19
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcHwDecoderBufferMode:I

    goto/16 :goto_16

    .line 83
    :pswitch_1a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxWaitForFrameMs:I

    goto/16 :goto_16

    .line 84
    :pswitch_1b
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcRtcpIntervalTime:I

    goto/16 :goto_16

    .line 85
    :pswitch_1c
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNackReportDelayTime:I

    goto/16 :goto_16

    .line 86
    :pswitch_1d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxMediaPackets:I

    goto/16 :goto_16

    .line 87
    :pswitch_1e
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxFecPackets:I

    goto/16 :goto_16

    .line 88
    :pswitch_1f
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOpenFEC:I

    goto/16 :goto_16

    .line 89
    :pswitch_20
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOpenFlexFEC:I

    goto/16 :goto_16

    .line 90
    :pswitch_21
    invoke-static {v15}, Lorg/webrtc/haima/enums/DataChannelPolicy;->parsePolicy(Ljava/lang/String;)Lorg/webrtc/haima/enums/DataChannelPolicy;

    move-result-object v4

    .line 91
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->setPort7682DataChannelPolicy(Lorg/webrtc/haima/enums/DataChannelPolicy;)V

    goto/16 :goto_16

    .line 92
    :pswitch_22
    invoke-static {v15}, Lorg/webrtc/haima/enums/DataChannelPolicy;->parsePolicy(Ljava/lang/String;)Lorg/webrtc/haima/enums/DataChannelPolicy;

    move-result-object v4

    .line 93
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->setPort7681DataChannelPolicy(Lorg/webrtc/haima/enums/DataChannelPolicy;)V

    goto/16 :goto_16

    .line 94
    :pswitch_23
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    move-result-object v4

    invoke-virtual {v4, v15}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->setEnablePara(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 95
    :pswitch_24
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_14

    goto :goto_12

    :cond_14
    const/4 v10, 0x0

    :goto_12
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_frame_info_match_by_pts:Z

    goto/16 :goto_16

    .line 96
    :pswitch_25
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_frame_buffer_size_limit:I

    goto/16 :goto_16

    .line 97
    :pswitch_26
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_15

    goto :goto_13

    :cond_15
    const/4 v10, 0x0

    :goto_13
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->useTextureCloningFlag:Z

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "useTextureCloningFlag: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->useTextureCloningFlag:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 99
    :pswitch_27
    sget-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSoftwareDecoder:Z

    const/4 v6, 0x0

    invoke-static {v10, v15, v4, v6}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v4

    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSoftwareDecoder:Z

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter Model for useSoftwareDecoder model: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSoftwareDecoder:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 101
    :pswitch_28
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-le v4, v6, :cond_16

    .line 102
    invoke-static {v15}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchCPU(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    goto/16 :goto_16

    .line 103
    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 104
    :pswitch_29
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-gt v4, v6, :cond_17

    .line 105
    invoke-static {v15}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchCPU(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    goto/16 :goto_16

    .line 106
    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 107
    :pswitch_2a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->iceUnwritableMinChecks:I

    goto :goto_16

    .line 108
    :pswitch_2b
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->iceUnwritableTimeMs:I

    goto :goto_16

    .line 109
    :pswitch_2c
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->hm_const_smoothfps:I

    goto :goto_16

    .line 110
    :pswitch_2d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->iceStableWritableConnectionPingInterval:I

    goto :goto_16

    .line 111
    :pswitch_2e
    new-instance v4, Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_18

    goto :goto_14

    :cond_18
    const/4 v10, 0x0

    :goto_14
    invoke-direct {v4, v14, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;-><init>(Ljava/lang/String;Z)V

    sput-object v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->h265Switch:Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;

    goto :goto_16

    .line 112
    :pswitch_2f
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->drop_client_candidate_percent:I

    goto :goto_16

    .line 113
    :pswitch_30
    sget-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSurfaceRender:Z

    if-nez v4, :cond_19

    goto :goto_16

    .line 114
    :cond_19
    invoke-static {v15}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchSurfaceRender(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSurfaceRender:Z

    goto :goto_16

    .line 115
    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown config: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_16

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 116
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_16
    :pswitch_31
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_1b
    const/4 v9, 0x3

    .line 117
    sget-object v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->configKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_24

    aget-object v5, v2, v4

    .line 118
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 119
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1c

    const/4 v14, 0x2

    goto/16 :goto_1c

    .line 120
    :cond_1c
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const v15, -0x72eea070

    if-eq v14, v15, :cond_1f

    const v15, -0x1daf18c8

    if-eq v14, v15, :cond_1e

    const v15, 0x563148a4

    if-eq v14, v15, :cond_1d

    goto :goto_18

    :cond_1d
    :try_start_4
    const-string v14, "rtc_use_shared_context_via_model"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    goto :goto_19

    :catch_1
    move-exception v0

    move-object v5, v0

    const/4 v14, 0x2

    goto :goto_1b

    :cond_1e
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v5, :cond_20

    const/4 v5, 0x2

    goto :goto_19

    :cond_1f
    :try_start_5
    const-string v14, "rtc_not_use_shared_context_via_model"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_19

    :cond_20
    :goto_18
    const/4 v5, -0x1

    :goto_19
    if-eqz v5, :cond_23

    if-eq v5, v10, :cond_22

    const/4 v14, 0x2

    if-eq v5, v14, :cond_21

    goto :goto_1c

    .line 121
    :cond_21
    :try_start_6
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    const/4 v15, 0x0

    invoke-static {v10, v11, v5, v15}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v11, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_22
    const/4 v14, 0x2

    .line 123
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    const/4 v15, 0x0

    invoke-static {v15, v11, v5, v15}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    goto :goto_1c

    :cond_23
    const/4 v14, 0x2

    .line 124
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    const/4 v15, 0x0

    invoke-static {v10, v11, v5, v15}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1c

    :catch_2
    move-exception v0

    goto :goto_1a

    :catch_3
    move-exception v0

    const/4 v14, 0x2

    :goto_1a
    move-object v5, v0

    .line 125
    :goto_1b
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_17

    :cond_24
    const/4 v14, 0x2

    .line 126
    sget-object v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->configKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_27

    aget-object v5, v2, v4

    .line 127
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 128
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_25

    goto/16 :goto_20

    .line 129
    :cond_25
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    goto :goto_1e

    :sswitch_33
    const-string v12, "rtc_use_shared_context_via_model_exact"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x0

    goto :goto_1f

    :sswitch_34
    const-string v12, "rtc_use_direct_surface_view_exact"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x4

    goto :goto_1f

    :sswitch_35
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x6

    goto :goto_1f

    :sswitch_36
    const-string v12, "rtc_enable_media_codec_output_dropping_exact"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x5

    goto :goto_1f

    :sswitch_37
    const-string v12, "rtc_close_decoder_low_latency"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x3

    goto :goto_1f

    :sswitch_38
    const-string v12, "rtc_use_software_decoder_via_model_exact"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x2

    goto :goto_1f

    :sswitch_39
    const-string v12, "rtc_not_use_shared_context_via_model_exact"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_1f

    :cond_26
    :goto_1e
    const/4 v5, -0x1

    :goto_1f
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_20

    .line 130
    :pswitch_32
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    invoke-static {v10, v11, v5, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL_EXACT:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v11, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 132
    :pswitch_33
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    invoke-static {v10, v11, v5, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v11, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 134
    :pswitch_34
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    invoke-static {v10, v11, v5, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v11, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 136
    :pswitch_35
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->isCloseDecoderLowLatency:Z

    invoke-static {v10, v11, v5, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->isCloseDecoderLowLatency:Z

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Filter Model for isCloseDecoderLowLatency exact model: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v11, Lorg/webrtc/haima/HmRtcGlobalConfig;->isCloseDecoderLowLatency:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 138
    :pswitch_36
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSoftwareDecoder:Z

    invoke-static {v10, v11, v5, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSoftwareDecoder:Z

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Filter Model for useSoftwareDecoder exact model: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v11, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSoftwareDecoder:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 140
    :pswitch_37
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    const/4 v12, 0x0

    invoke-static {v12, v11, v5, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    goto :goto_20

    .line 141
    :pswitch_38
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    invoke-static {v10, v11, v5, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v5

    sput-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_20

    :catch_4
    move-exception v0

    move-object v5, v0

    .line 142
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HmRtcGlobalConfig:parseRtcConfig Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x341b

    .line 145
    invoke-static {v11, v5}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    :cond_27
    const-string v2, "rtc_force_VP8_format"

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    const/4 v3, 0x0

    .line 148
    invoke-static {v10, v2, v3, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v2

    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceVP8Format:Z

    if-eqz v2, :cond_28

    const-string v2, "Force vp8 format matched, reset useShareContext is true "

    .line 149
    invoke-static {v7, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sput-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    :cond_28
    const-string v2, "rtc_force_H264_format"

    .line 151
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, 0x0

    .line 153
    invoke-static {v10, v2, v3, v10}, Lorg/webrtc/haima/HmRtcGlobalConfig;->matchModel(ZLjava/lang/String;ZZ)Z

    move-result v2

    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceH264Format:Z

    :cond_29
    const-string v2, "rtc_enable_turn_protocol"

    .line 154
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 156
    new-instance v3, Lorg/webrtc/haima/HmRtcSdkTurnCfg;

    invoke-direct {v3, v2}, Lorg/webrtc/haima/HmRtcSdkTurnCfg;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v2

    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableTurnProtocol:Z

    .line 158
    invoke-virtual {v3}, Lorg/webrtc/haima/HmRtcSdkTurnCfg;->getAuthInfo()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcTurnAuthInfo:Ljava/lang/String;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RTC_ENABLE_TURN_PROTOCOL enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableTurnProtocol:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",authInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcTurnAuthInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const-string v2, "rtc_udp_port_config"

    .line 160
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 162
    new-instance v3, Lorg/webrtc/haima/HmRtcUdpPortCfg;

    invoke-direct {v3, v2}, Lorg/webrtc/haima/HmRtcUdpPortCfg;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUdpPortCfg:Lorg/webrtc/haima/HmRtcUdpPortCfg;

    .line 163
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTC_UDP_PORT_CONFIG :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUdpPortCfg:Lorg/webrtc/haima/HmRtcUdpPortCfg;

    invoke-virtual {v3}, Lorg/webrtc/haima/HmRtcUdpPortCfg;->ToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rtc_stun_request_resend_config"

    .line 164
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 166
    new-instance v3, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;

    invoke-direct {v3, v2}, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcStunReqResendCfg:Lorg/webrtc/haima/HmRtcStunRequestResendCfg;

    .line 167
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTC_STUNREQ_RESEND_CONFIG :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcStunReqResendCfg:Lorg/webrtc/haima/HmRtcStunRequestResendCfg;

    invoke-virtual {v3}, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->ToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static/range {p0 .. p0}, Lorg/webrtc/haima/HmRtcGlobalConfig;->parseCloudRtcFieldTrials(Ljava/util/HashMap;)V

    .line 169
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->parseHmNewRtcConfig()V

    .line 170
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceH264Format:Z

    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceVP8Format:Z

    .line 171
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->openH265()Z

    move-result v10

    sget-boolean v11, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableCacheDecoders:Z

    sget v12, Lorg/webrtc/haima/HmRtcGlobalConfig;->cacheDecodersTimeout:I

    sget-boolean v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSoftwareDecoder:Z

    .line 172
    invoke-static/range {v8 .. v13}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->startGettingSupportedCodecs(ZZZZIZ)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c3a13f6 -> :sswitch_32
        -0x7bb127a5 -> :sswitch_31
        -0x78c0ebc5 -> :sswitch_30
        -0x77a32608 -> :sswitch_2f
        -0x65466ea1 -> :sswitch_2e
        -0x64b5c562 -> :sswitch_2d
        -0x6005af09 -> :sswitch_2c
        -0x5ec4b96b -> :sswitch_2b
        -0x558e5094 -> :sswitch_2a
        -0x553a7403 -> :sswitch_29
        -0x461ab9a0 -> :sswitch_28
        -0x3facdc56 -> :sswitch_27
        -0x3cd81472 -> :sswitch_26
        -0x3b86a4b0 -> :sswitch_25
        -0x3a2f8766 -> :sswitch_24
        -0x3902d539 -> :sswitch_23
        -0x34afe764 -> :sswitch_22
        -0x32fe6084 -> :sswitch_21
        -0x1ff7b4c8 -> :sswitch_20
        -0x1daf18c8 -> :sswitch_1f
        -0x1b0f0dc5 -> :sswitch_1e
        -0x14f87e42 -> :sswitch_1d
        -0xe62fe5e -> :sswitch_1c
        -0xb666aec -> :sswitch_1b
        -0x592ba3 -> :sswitch_1a
        0x6f8e34 -> :sswitch_19
        0x14d0d6c -> :sswitch_18
        0x6bcff74 -> :sswitch_17
        0xea250c6 -> :sswitch_16
        0x14f9412c -> :sswitch_15
        0x1804fdfe -> :sswitch_14
        0x1fe364e6 -> :sswitch_13
        0x1ff9673c -> :sswitch_12
        0x25b9a1df -> :sswitch_11
        0x31285b65 -> :sswitch_10
        0x39399546 -> :sswitch_f
        0x3a22d65d -> :sswitch_e
        0x3a22d74b -> :sswitch_d
        0x3b93ee61 -> :sswitch_c
        0x3cd0b20d -> :sswitch_b
        0x4479402d -> :sswitch_a
        0x44b43ca4 -> :sswitch_9
        0x4609779c -> :sswitch_8
        0x5c24f9de -> :sswitch_7
        0x5d81d8eb -> :sswitch_6
        0x618ae5f4 -> :sswitch_5
        0x63d0b9fa -> :sswitch_4
        0x677434bb -> :sswitch_3
        0x70f1e482 -> :sswitch_2
        0x74fc822c -> :sswitch_1
        0x7fee2dae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_31
        :pswitch_31
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6a4cde70 -> :sswitch_39
        -0x4e6c9605 -> :sswitch_38
        -0x4df00d8d -> :sswitch_37
        -0x4b6277c3 -> :sswitch_36
        -0x1ff7b4c8 -> :sswitch_35
        -0x1efad649 -> :sswitch_34
        0x797ceba4 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch
.end method

.method public static parseRtcConfig(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->resetConfigValues()V

    .line 2
    invoke-static {p0, p1}, Lorg/webrtc/haima/HmRtcGlobalConfig;->parseDebugModeParam(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_debug_mode:Z

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/webrtc/haima/HmRtcGlobalConfig;->parseRtcConfig(Ljava/util/HashMap;)V

    return-void
.end method

.method private static parseUploadVideoParam(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "HmRtcGlobalConfig"

    const/4 v2, 0x0

    if-eqz p0, :cond_11

    const-string v3, "rtc_upload_audio_on"

    .line 1
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rtc_upload_audio_on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    goto :goto_1

    :catch_1
    move-exception v3

    const/4 v4, 0x0

    .line 5
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    const-string v3, "rtc_upload_video_on_v2"

    .line 6
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    sput-boolean v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 9
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rtc_upload_video_on: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v5, 0x1

    goto :goto_5

    :catch_2
    move-exception v3

    const/4 v5, 0x1

    goto :goto_4

    :catch_3
    move-exception v3

    const/4 v5, 0x0

    .line 10
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    const-string v3, "rtc_low_performance_device_determine_on"

    .line 11
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    const/4 v3, 0x0

    :goto_6
    sput-boolean v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_low_performance_device_determine_on:Z

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc_low_performance_device_determine_on: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_low_performance_device_determine_on:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_7
    const-string v3, "rtc_upload_additional_orientation_front_camera1"

    .line 16
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 17
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 18
    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_front_camera1:I

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc_upload_additional_orientation_front_camera1: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_front_camera1:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_5
    move-exception v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_8
    const-string v3, "rtc_upload_additional_orientation_back_camera1"

    .line 21
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 22
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 23
    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_back_camera1:I

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc_upload_additional_orientation_back_camera1: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_back_camera1:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_9

    :catch_6
    move-exception v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_9
    const-string v3, "rtc_upload_front_camera_mirror_camera1"

    .line 26
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 27
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    :try_start_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_a

    :cond_8
    const/4 v3, 0x0

    :goto_a
    sput-boolean v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_front_camera_mirror_camera1:Z

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc_upload_front_camera_mirror_camera1: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_front_camera_mirror_camera1:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_b

    :catch_7
    move-exception v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_b
    const-string v3, "rtc_upload_back_camera_mirror_camera1"

    .line 31
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 32
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    :try_start_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_c

    :cond_a
    const/4 v3, 0x0

    :goto_c
    sput-boolean v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_back_camera_mirror_camera1:Z

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc_upload_back_camera_mirror_camera1: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_back_camera_mirror_camera1:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_d

    :catch_8
    move-exception v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_d
    const-string v3, "rtc_upload_additional_orientation_front_camera2"

    .line 36
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 37
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    :try_start_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_front_camera2:I

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc_upload_additional_orientation_front_camera2: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_front_camera2:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_e

    :catch_9
    move-exception v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_e
    const-string v3, "rtc_upload_additional_orientation_back_camera2"

    .line 41
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 42
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 43
    :try_start_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_back_camera2:I

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc_upload_additional_orientation_back_camera2: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_back_camera2:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_f

    :catch_a
    move-exception v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_f
    const-string v3, "rtc_upload_front_camera_mirror_camera2"

    .line 46
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 47
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    :try_start_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_10

    :cond_e
    const/4 v3, 0x0

    :goto_10
    sput-boolean v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_front_camera_mirror_camera2:Z

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc_upload_front_camera_mirror_camera2: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_front_camera_mirror_camera2:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_11

    :catch_b
    move-exception v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_11
    const-string v3, "rtc_upload_back_camera_mirror_camera2"

    .line 51
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 52
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    :try_start_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_12

    :cond_10
    const/4 v3, 0x0

    :goto_12
    sput-boolean v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_back_camera_mirror_camera2:Z

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtc_upload_back_camera_mirror_camera2: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_back_camera_mirror_camera2:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_13

    :catch_c
    move-exception v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    :cond_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_12
    :goto_13
    const-string v3, "rtc_upload_video_resolution"

    .line 56
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "rtc_upload_video_fps"

    .line 57
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "rtc_upload_video_min_bitrate"

    .line 58
    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "rtc_upload_video_max_bitrate"

    .line 59
    invoke-virtual {p0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseUploadVideoParam: resolution="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";fps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";minBitrate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";maxBitrate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "x"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 62
    :try_start_d
    new-instance v9, Lorg/webrtc/haima/camera/HmCameraSettings;

    invoke-direct {v9}, Lorg/webrtc/haima/camera/HmCameraSettings;-><init>()V

    .line 63
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 64
    aget-object v8, v3, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Lorg/webrtc/haima/camera/HmCameraSettings;->setWidth(I)V

    .line 65
    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v3}, Lorg/webrtc/haima/camera/HmCameraSettings;->setHeight(I)V

    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v3}, Lorg/webrtc/haima/camera/HmCameraSettings;->setFrameRate(I)V

    .line 67
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/webrtc/haima/camera/HmCameraManager;->setCameraCaptureFormat(Lorg/webrtc/haima/camera/HmCameraSettings;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    const/4 v3, 0x1

    goto :goto_14

    :catch_d
    move-exception v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    const/4 v3, 0x0

    .line 69
    :goto_14
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 70
    :try_start_e
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lorg/webrtc/haima/camera/HmCameraManager;->setVideoBitrate(Ljava/lang/Integer;I)V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_e

    const/4 v3, 0x1

    goto :goto_15

    :catch_e
    move-exception v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :cond_14
    :goto_15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 73
    :try_start_f
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v0}, Lorg/webrtc/haima/camera/HmCameraManager;->setVideoBitrate(Ljava/lang/Integer;I)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_f

    const/4 v3, 0x1

    goto :goto_16

    :catch_f
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_16
    if-eqz v3, :cond_17

    if-nez v4, :cond_16

    .line 75
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    if-nez p0, :cond_16

    .line 76
    sput-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    const-string p0, "The parameter rtc_upload_audio_on is deduced to true."

    .line 77
    invoke-static {v1, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-nez v5, :cond_17

    .line 78
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    if-nez p0, :cond_17

    .line 79
    sput-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    const-string p0, "The parameter rtc_upload_video_on is deduced to true."

    .line 80
    invoke-static {v1, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The parameter rtc_upload_audio_on is set with "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " finally."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parameter rtc_upload_video_on is set with "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    move-result-object v2

    sget v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_front_camera1:I

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_back_camera1:I

    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_front_camera_mirror_camera1:Z

    sget-boolean v6, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_back_camera_mirror_camera1:Z

    sget v7, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_front_camera2:I

    sget v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_back_camera2:I

    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_front_camera_mirror_camera2:Z

    sget-boolean v10, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_back_camera_mirror_camera2:Z

    invoke-virtual/range {v2 .. v10}, Lorg/webrtc/haima/camera/HmCameraManager;->setCameraExternalControlDefaultValue(IIZZIIZZ)V

    return-void
.end method

.method private static resetConfigValues()V
    .locals 6

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->setEnablePara(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->drop_client_candidate_percent:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->h265Switch:Lorg/webrtc/haima/HmRtcGlobalConfig$HmRtcCanaryConfig;

    .line 17
    .line 18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v3, 0x16

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-le v2, v3, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    sput-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    .line 29
    .line 30
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->useTextureCloningFlag:Z

    .line 31
    .line 32
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceVP8Format:Z

    .line 33
    .line 34
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceH264Format:Z

    .line 35
    .line 36
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSoftwareDecoder:Z

    .line 37
    .line 38
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_frame_buffer_size_limit:I

    .line 39
    .line 40
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_frame_info_match_by_pts:Z

    .line 41
    .line 42
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOpenFlexFEC:I

    .line 43
    .line 44
    const/4 v2, -0x1

    .line 45
    sput v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOpenFEC:I

    .line 46
    .line 47
    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxMediaPackets:I

    .line 48
    .line 49
    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxFecPackets:I

    .line 50
    .line 51
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->isCloseDecoderLowLatency:Z

    .line 52
    .line 53
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNackReportDelayTime:I

    .line 54
    .line 55
    const/16 v3, 0x3e8

    .line 56
    .line 57
    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcRtcpIntervalTime:I

    .line 58
    .line 59
    const/16 v3, 0xbb8

    .line 60
    .line 61
    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxWaitForFrameMs:I

    .line 62
    .line 63
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcHwDecoderBufferMode:I

    .line 64
    .line 65
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmNackBufferLimit:I

    .line 66
    .line 67
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmNackBufferSalt:I

    .line 68
    .line 69
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmNackBufferForceLimit:I

    .line 70
    .line 71
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcImageAdjustable:Z

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcBrightnessRatio:F

    .line 75
    .line 76
    const/high16 v3, 0x3f800000    # 1.0f

    .line 77
    .line 78
    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcContrastRatio:F

    .line 79
    .line 80
    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSaturationRatio:F

    .line 81
    .line 82
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 83
    .line 84
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    .line 85
    .line 86
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcForceEgl10:Z

    .line 87
    .line 88
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEglMonochromeOff:Z

    .line 89
    .line 90
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableFrameInterpolation:Z

    .line 91
    .line 92
    const/16 v3, 0x64

    .line 93
    .line 94
    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFirstFrameInterpolationInterval:I

    .line 95
    .line 96
    const/16 v3, 0x21

    .line 97
    .line 98
    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFollowingFrameInterpolationInterval:I

    .line 99
    .line 100
    const v3, 0x7fffffff

    .line 101
    .line 102
    .line 103
    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFrameInterpolationTopLimit:I

    .line 104
    .line 105
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    .line 106
    .line 107
    new-instance v3, Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .line 111
    .line 112
    sput-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->mHMRTCloudConfig:Ljava/util/Map;

    .line 113
    .line 114
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    .line 115
    .line 116
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 117
    .line 118
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_front_camera1:I

    .line 119
    .line 120
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_back_camera1:I

    .line 121
    .line 122
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_front_camera_mirror_camera1:Z

    .line 123
    .line 124
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_back_camera_mirror_camera1:Z

    .line 125
    .line 126
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_front_camera2:I

    .line 127
    .line 128
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_additional_orientation_back_camera2:I

    .line 129
    .line 130
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_front_camera_mirror_camera2:Z

    .line 131
    .line 132
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_back_camera_mirror_camera2:Z

    .line 133
    .line 134
    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_download_audio_on:Z

    .line 135
    .line 136
    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_download_video_on:Z

    .line 137
    .line 138
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->updateNeworksContinuableOn:Z

    .line 139
    .line 140
    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_low_performance_device_determine_on:Z

    .line 141
    .line 142
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->playout_delay_mode:I

    .line 143
    .line 144
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->forced_playout_delay_min:I

    .line 145
    .line 146
    sput v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->forced_playout_delay_max:I

    .line 147
    .line 148
    const/16 v3, 0xb4

    .line 149
    .line 150
    sput v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->max_allowed_framebuffer_size_in_normal:I

    .line 151
    .line 152
    const-string v3, ""

    .line 153
    .line 154
    sput-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmBadFrameDetectConfigParams:Ljava/lang/String;

    .line 155
    .line 156
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcBadFrameDetectConfigSwitchV2:Z

    .line 157
    .line 158
    new-instance v5, Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 161
    .line 162
    .line 163
    sput-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfig:Ljava/util/Map;

    .line 164
    .line 165
    new-instance v5, Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 168
    .line 169
    .line 170
    sput-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->mNewRTCloudConfigWithNoCid:Ljava/util/Map;

    .line 171
    .line 172
    sget-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 173
    .line 174
    invoke-virtual {v5}, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->reset()V

    .line 175
    .line 176
    .line 177
    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->videoRemoteResourceAdaptationOn:Z

    .line 178
    .line 179
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSurfaceSwitch:Z

    .line 180
    .line 181
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSrtpCipherReport:Z

    .line 182
    .line 183
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_debug_mode:Z

    .line 184
    .line 185
    sput-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->mHmRtcSdkDebugCfg:Lorg/webrtc/haima/HmRtcSdkDebugCfg;

    .line 186
    .line 187
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetReport:Z

    .line 188
    .line 189
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    .line 190
    .line 191
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableNetworkAccelerate:Z

    .line 192
    .line 193
    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSwitchCellularNetwork:Z

    .line 194
    .line 195
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableCacheDecoders:Z

    .line 196
    .line 197
    const/4 v0, 0x6

    .line 198
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->cacheDecodersTimeout:I

    .line 199
    .line 200
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->no_audio_processing:Z

    .line 201
    .line 202
    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_aec:Z

    .line 203
    .line 204
    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_agc:Z

    .line 205
    .line 206
    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_ns:Z

    .line 207
    .line 208
    sput-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_webrtc_agc_and_hpf:Z

    .line 209
    .line 210
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableNoOutputLongTimeRequestKeyFrame:Z

    .line 211
    .line 212
    const/16 v0, 0x7d0

    .line 213
    .line 214
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNoOutputFramesIntervalMs:I

    .line 215
    .line 216
    const/16 v0, 0x1e

    .line 217
    .line 218
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNumOfNotDecodedFramesThreshold:I

    .line 219
    .line 220
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSmoothlyDecoding:Z

    .line 221
    .line 222
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSmoothlyDecodingDebug:Z

    .line 223
    .line 224
    const/4 v4, 0x5

    .line 225
    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMinDecoderBuffers:I

    .line 226
    .line 227
    const/16 v4, 0x3c

    .line 228
    .line 229
    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMaxDecoderBuffers:I

    .line 230
    .line 231
    const/4 v4, 0x3

    .line 232
    sput v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMinWaitDelay:I

    .line 233
    .line 234
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMaxWaitDelay:I

    .line 235
    .line 236
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    .line 237
    .line 238
    invoke-virtual {v0}, Lorg/webrtc/haima/HmOperationDelayConfig;->reset()V

    .line 239
    .line 240
    .line 241
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableRemoveSei:Z

    .line 242
    .line 243
    sput-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcPreferVideoCodec:Ljava/lang/String;

    .line 244
    .line 245
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableEncoderH264HP:Z

    .line 246
    .line 247
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableVideoFrameElapsedTimeReport:Z

    .line 248
    .line 249
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecVideoDecoderLowLatency:Z

    .line 250
    .line 251
    sput v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->hm_const_smoothfps:I

    .line 252
    .line 253
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableGetWifiSsidDefault:Z

    .line 254
    .line 255
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableShareStreaming:Z

    .line 256
    .line 257
    sput-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableImageEnhancement:Z

    .line 258
    .line 259
    const/16 v0, 0x96

    .line 260
    .line 261
    sput v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcImageEnhancementStrength:I

    .line 262
    .line 263
    return-void
.end method

.method public static rtcFecType()I
    .locals 3

    .line 1
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOpenFEC:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-le v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return v0

    .line 11
    :cond_1
    :goto_0
    return v1
.end method
