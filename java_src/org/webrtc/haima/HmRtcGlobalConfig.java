package org.webrtc.haima;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.hmwebrtc.Logging;
import org.hmwebrtc.MediaCodecSupportedCodecs;
import org.hmwebrtc.RtcCountlyConstants;
import org.hmwebrtc.utils.FiledStringParser;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.camera.HmCameraManager;
import org.webrtc.haima.camera.HmCameraSettings;
import org.webrtc.haima.countly.RtcCountlyUtil;
import org.webrtc.haima.enums.DataChannelPolicy;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcGlobalConfig {
    private static final String CONNECTION_PING_INTERVAL_MS = "conn_ping_interval_ms";
    private static final String DROP_CLIENT_CANDIDATE = "drop_client_candidate";
    private static final String FORCED_PLAYOUT_DELAY_MAX = "forced_playout_delay_max";
    private static final String FORCED_PLAYOUT_DELAY_MIN = "forced_playout_delay_min";
    private static final String FORCE_H264_FORMAT = "rtc_force_H264_format";
    private static final String FORCE_H264_FORMAT_V2 = "rtc_force_H264_format_v2";
    private static final String FORCE_VP8_FORMAT = "rtc_force_VP8_format";
    private static final String HMRTC_AV_Delay_SDK = "hm_rtc_av_delay_sdk";
    private static final String HM_CONST_SMOOTHFPS_KEY = "hm_const_smoothfps";
    private static String KEY_RTC_FIELD_FEC_TRIALS = null;
    private static String KEY_RTC_FIELD_TRIALS = null;
    private static final String MAX_ALLOWED_FRAMEBUFFER_SIZE_IN_NORMAL = "max_allowed_framebuffer_size_in_normal";
    private static final String NOT_USE_SHARED_CONTEXT_OVER_ANDROID6 = "not_use_shared_context_over_android6";
    private static final String NOT_USE_SHARED_CONTEXT_VIA_MODEL = "rtc_not_use_shared_context_via_model";
    private static final String NOT_USE_SHARED_CONTEXT_VIA_MODEL_EXACT = "rtc_not_use_shared_context_via_model_exact";
    private static final String OPEN_H265 = "open_h265";
    private static final String PLAYOUT_DELAY_MODE = "playout_delay_mode";
    private static final String PORT7681_DATACHANNEL_POLICY = "port7681_datachannel_policy";
    private static final String PORT7682_DATACHANNEL_POLICY = "port7682_datachannel_policy";
    public static final String RTC_ANABLE_ENCODER_H264_HP = "rtc_enable_encoder_h264_hp";
    private static final String RTC_CLOSE_LOW_LATENCY = "rtc_close_decoder_low_latency";
    private static final String RTC_DATACHANNEL_ENABLED = "rtc_datachannel_enabled";
    private static final String RTC_DATACHANNEL_ENABLED_PERCENT_V2 = "rtc_datachannel_enabled_percent_v2";
    private static final String RTC_DEBUG_MODE = "hm_rtc_sdk_debug";
    private static final String RTC_DOWNLOAD_AUDIO_ON = "rtc_download_audio_on";
    private static final String RTC_DOWNLOAD_VIDEO_ON = "rtc_download_video_on";
    public static final String RTC_EGL_MONOCHROME_OFF = "rtc_egl_monochrome_off";
    private static final String RTC_ENABLE_CACHE_DECODERS = "rtc_enable_cache_decoders";
    private static final String RTC_ENABLE_FRAME_INTERPOLATION = "rtc_enable_frame_interpolation";
    private static final String RTC_ENABLE_FRAME_INTERPOLATION_V2 = "rtc_enable_frame_interpolation_v2";
    public static final String RTC_ENABLE_GET_WIFI_SSID_DEFAULT = "rtc_enable_get_wifi_ssid_default";
    public static final String RTC_ENABLE_IMAGE_ENHANCEMENT = "rtc_enable_image_enhancement";
    public static final String RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING = "rtc_enable_media_codec_output_dropping";
    public static final String RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_EXACT = "rtc_enable_media_codec_output_dropping_exact";
    public static final String RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_V2 = "rtc_enable_media_codec_output_dropping_v2";
    public static final String RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_WHITE_BLACK_LIST = "rtc_enable_media_codec_output_dropping_white_black_list";
    public static final String RTC_ENABLE_MEDIA_CODEC_VIDEO_DECODER_LOW_LATENCY = "rtc_enable_media_codec_video_decoder_low_latency";
    private static final String RTC_ENABLE_NETWORK_ACCELERATE = "rtc_enable_network_accelerate";
    private static final String RTC_ENABLE_REMOVE_SEI = "rtc_enable_remove_sei";
    private static final String RTC_ENABLE_SHARE_STREAMING = "rtc_enable_share_streaming";
    private static final String RTC_ENABLE_SIGNALV1_DNSRESOLVE_OPTIMIZE = "rtc_enable_signalv1_dnsresolve_optimize";
    private static final String RTC_ENABLE_SRTP_CIPHER_REPORT = "rtc_enable_srtp_cipher_report";
    private static final String RTC_ENABLE_SURFACE_SWITCH = "rtc_enable_surface_switch";
    private static final String RTC_ENABLE_SWITCH_CELLULAR_NETWORK = "rtc_enable_switch_cellular_network";
    public static final String RTC_ENABLE_TURN_PROTOCOL = "rtc_enable_turn_protocol";
    public static final String RTC_ENABLE_VIDEO_FRAME_ELAPSED_TIME_REPORT = "rtc_enable_video_frame_elapsed_time_report";
    private static final String RTC_ENABLE_WEAKLY_NET_REPORT = "rtc_enable_weakly_net_report";
    private static final String RTC_FIRST_FRAME_INTERPOLATION_INTERVAL = "rtc_first_frame_interpolation_interval";
    private static final String RTC_FLEX_FEC_FEC_PACKETS = "rtc_fec_max_fec_packets";
    private static final String RTC_FLEX_FEC_MEDIA_PACKETS = "rtc_fec_max_media_packets";
    private static final String RTC_FOLLOWING_FRAME_INTERPOLATION_INTERVAL = "rtc_following_frame_interpolation_interval";
    public static final String RTC_FORCE_EGL10 = "rtc_force_egl10";
    public static final String RTC_FORCE_EGL10_V2 = "rtc_force_egl10_v2";
    private static final String RTC_FRAME_BUFFER_SIZE_LIMIT = "rtc_frame_buffer_size_limit";
    private static final String RTC_FRAME_INFO_MATCH_BY_PTS = "rtc_frame_info_match_by_pts";
    private static final String RTC_FRAME_INTERPOLATION_TOP_LIMIT = "rtc_frame_interpolation_top_limit";
    private static final String RTC_HM_BAD_FRAME_DETECT_CONFIG = "rtc_bad_frame_detect_config";
    private static final String RTC_HM_BAD_FRAME_DETECT_CONFIG_SWITCH_FOR_V2 = "rtc_bad_frame_detect_config_switch_v2";
    private static final String RTC_HM_BAD_FRAME_DETECT_CONFIG_V2 = "rtc_bad_frame_detect_config_v2";
    private static final String RTC_HM_NACK_BUFFER_CONFIG = "rtc_nack_buffer_config_v2";
    private static final String RTC_HWDECODER_BUFFER_MODE = "rtc_hwdecoder_buffer_mode";
    public static final String RTC_IMAGE_ADJUSTABLE = "rtc_image_adjustable";
    public static final String RTC_IMAGE_BRIGHTNESS_RATIO = "rtc_brightness_ratio";
    public static final String RTC_IMAGE_CONTRAST_RATIO = "rtc_contrast_ratio";
    public static final String RTC_IMAGE_SATURATION_RATIO = "rtc_saturation_ratio";
    private static final String RTC_LOW_PERFORMANCE_DEVICE_DETERMINE_ON = "rtc_low_performance_device_determine_on";
    private static final String RTC_NACK_REPORT_DELAY_TIME = "rtc_nack_report_delay_time";
    private static final String RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION = "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception";
    private static final String RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL = "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception_model";
    private static final String RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL_EXACT = "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception_model_exact";
    private static final String RTC_NO_OUTPUT_LONG_TIME = "rtc_no_output_long_time";
    private static final String RTC_OPEN_FEC = "rtc_open_fec";
    private static final String RTC_OPEN_FLEX_FEC = "rtc_open_flexfec";
    private static final String RTC_OPERATION_DELAY_SDK = "rtc_operation_delay_sdk";
    public static final String RTC_PREFER_VIDEO_CODEC = "rtc_prefer_video_codec";
    private static final String RTC_RTCP_INTERVAL_TIME = "rtc_rtcp_interval_time";
    public static final String RTC_SIGNALV2_SIGNALV1DELAYTIME = "rtc_signalv2_signalv1delaytime";
    private static final String RTC_SMOOTHLY_DECODING = "rtc_smooth_decoding";
    public static final String RTC_STUNREQ_RESEND_CONFIG = "rtc_stun_request_resend_config";
    public static final String RTC_UDP_PORT_CONFIG = "rtc_udp_port_config";
    private static final String RTC_UPLOAD_ADDITIONAL_ORIENTATION_BACK_CAMERA1 = "rtc_upload_additional_orientation_back_camera1";
    private static final String RTC_UPLOAD_ADDITIONAL_ORIENTATION_BACK_CAMERA2 = "rtc_upload_additional_orientation_back_camera2";
    private static final String RTC_UPLOAD_ADDITIONAL_ORIENTATION_FRONT_CAMERA1 = "rtc_upload_additional_orientation_front_camera1";
    private static final String RTC_UPLOAD_ADDITIONAL_ORIENTATION_FRONT_CAMERA2 = "rtc_upload_additional_orientation_front_camera2";
    private static final String RTC_UPLOAD_AUDIO_CONFIG = "rtc_upload_audio_config";
    private static final String RTC_UPLOAD_AUDIO_ON = "rtc_upload_audio_on";
    private static final String RTC_UPLOAD_BACK_CAMERA_MIRROR_CAMERA1 = "rtc_upload_back_camera_mirror_camera1";
    private static final String RTC_UPLOAD_BACK_CAMERA_MIRROR_CAMERA2 = "rtc_upload_back_camera_mirror_camera2";
    private static final String RTC_UPLOAD_FRONT_CAMERA_MIRROR_CAMERA1 = "rtc_upload_front_camera_mirror_camera1";
    private static final String RTC_UPLOAD_FRONT_CAMERA_MIRROR_CAMERA2 = "rtc_upload_front_camera_mirror_camera2";
    private static final String RTC_UPLOAD_VIDEO_FPS = "rtc_upload_video_fps";
    private static final String RTC_UPLOAD_VIDEO_MAX_BITRATE = "rtc_upload_video_max_bitrate";
    private static final String RTC_UPLOAD_VIDEO_MIN_BITRATE = "rtc_upload_video_min_bitrate";
    private static final String RTC_UPLOAD_VIDEO_ON = "rtc_upload_video_on_v2";
    private static final String RTC_UPLOAD_VIDEO_RESOLUTION = "rtc_upload_video_resolution";
    public static final String RTC_USE_DIRECT_SURFACE_VIEW = "rtc_use_direct_surface_view";
    public static final String RTC_USE_DIRECT_SURFACE_VIEW_EXACT = "rtc_use_direct_surface_view_exact";
    public static final String RTC_USE_DIRECT_SURFACE_VIEW_V2 = "rtc_use_direct_surface_view_v2";
    public static final String RTC_USE_DIRECT_SURFACE_VIEW_WHITE_BLACK_LIST = "rtc_use_direct_surface_view_white_black_list";
    private static final String RTC_WAIT_FOR_FRAME_MS = "rtc_wait_for_frame_ms";
    private static final String RTC_X86_NOT_USE_SURFACE_RENDER = "rtc_tv_x86_not_use_surface_render";
    public static final int SC_RENDER_TYPE_EGL = 1;
    public static final int SC_RENDER_TYPE_SURFACE = 2;
    public static final int SC_RENDER_TYPE_YUV = 0;
    private static final String TAG = "HmRtcGlobalConfig";
    private static final String UNWRITABLE_MIN_CHECKS = "unwritable_min_checks";
    private static final String UNWRITABLE_TIME_OUT_MS = "unwritable_timeout_ms";
    private static final String UPDATE_NETWORKS_CONTINUABLE_ON = "update_networks_continuable_on";
    private static final String USE_SHARED_CONTEXT_LESS_ANDROID6 = "use_shared_context_less_android6";
    private static final String USE_SHARED_CONTEXT_VIA_MODEL = "rtc_use_shared_context_via_model";
    private static final String USE_SHARED_CONTEXT_VIA_MODEL_EXACT = "rtc_use_shared_context_via_model_exact";
    private static final String USE_SOFTWARE_DECODER_VIA_MODEL = "rtc_use_software_decoder_via_model";
    private static final String USE_SOFTWARE_DECODER_VIA_MODEL_EXACT = "rtc_use_software_decoder_via_model_exact";
    private static final String USE_TEXTURE_CLONING_FLAG = "use_texture_cloning_flag";
    private static final String VIDEO_REMOTE_RESOURCE_ADAPTATION_ON = "video_remote_resource_adaptation_on";
    public static int cacheDecodersTimeout = 0;
    private static String[] configKeys = null;
    public static boolean disable_builtin_aec = false;
    public static boolean disable_builtin_agc = false;
    public static boolean disable_builtin_ns = false;
    public static boolean disable_webrtc_agc_and_hpf = false;
    private static HmRtcCanaryConfig dropClientCandidateConfig = null;
    public static int drop_client_candidate_percent = 0;
    public static boolean forceH264Format = false;
    public static boolean forceVP8Format = false;
    public static int forced_playout_delay_max = 0;
    public static int forced_playout_delay_min = 0;
    private static HmRtcCanaryConfig h265Switch = null;
    private static String hmBadFrameDetectConfigParams = "";
    public static int hmNackBufferForceLimit = 0;
    public static int hmNackBufferLimit = 0;
    public static int hmNackBufferSalt = 0;
    public static HmAVDelayCloudConfig.AVDelayParameters hmRtcAvDelaySdk = null;
    private static int hm_const_smoothfps = 0;
    private static int iceStableWritableConnectionPingInterval = 0;
    private static int iceUnwritableMinChecks = 0;
    private static int iceUnwritableTimeMs = 0;
    public static boolean isCloseDecoderLowLatency = false;
    public static boolean isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException = false;
    private static String mCloudRtcFieldTrials = null;
    private static Map<String, String> mHMRTCloudConfig = null;
    public static HmRtcSdkDebugCfg mHmRtcSdkDebugCfg = null;
    private static Map<String, String> mNewRTCloudConfig = null;
    private static Map<String, String> mNewRTCloudConfigWithNoCid = null;
    public static int max_allowed_framebuffer_size_in_normal = 0;
    private static String[] newConfigKeys = null;
    private static String[] newConfigKeysWithNoCid = null;
    public static boolean no_audio_processing = false;
    public static int playout_delay_mode = 0;
    private static boolean rtcBadFrameDetectConfigSwitchV2 = false;
    public static float rtcBrightnessRatio = 0.0f;
    public static float rtcContrastRatio = 0.0f;
    public static boolean rtcEglMonochromeOff = false;
    public static boolean rtcEnableCacheDecoders = false;
    public static boolean rtcEnableEncoderH264HP = false;
    public static boolean rtcEnableFrameInterpolation = false;
    public static boolean rtcEnableGetWifiSsidDefault = false;
    public static boolean rtcEnableImageEnhancement = false;
    public static boolean rtcEnableMediaCodecOutputDropping = false;
    public static boolean rtcEnableMediaCodecVideoDecoderLowLatency = false;
    public static boolean rtcEnableNetworkAccelerate = false;
    public static boolean rtcEnableNoOutputLongTimeRequestKeyFrame = false;
    public static boolean rtcEnableRemoveSei = false;
    public static boolean rtcEnableShareStreaming = false;
    public static boolean rtcEnableSignalv1DnsResolveOptimize = false;
    public static boolean rtcEnableSmoothlyDecoding = false;
    public static boolean rtcEnableSmoothlyDecodingDebug = false;
    public static boolean rtcEnableSrtpCipherReport = false;
    public static boolean rtcEnableSurfaceSwitch = false;
    public static boolean rtcEnableSwitchCellularNetwork = false;
    public static boolean rtcEnableTurnProtocol = false;
    public static boolean rtcEnableVideoFrameElapsedTimeReport = false;
    public static boolean rtcEnableWeaklyNetDebug = false;
    public static boolean rtcEnableWeaklyNetReport = false;
    public static final int rtcFecTypeFlexFec = 1;
    public static final int rtcFecTypeNull = 0;
    public static final int rtcFecTypeRsFec = 2;
    public static final int rtcFecTypeUnSet = -1;
    public static int rtcFirstFrameInterpolationInterval = 0;
    public static int rtcFollowingFrameInterpolationInterval = 0;
    public static boolean rtcForceEgl10 = false;
    public static int rtcFrameInterpolationTopLimit = 0;
    public static int rtcHwDecoderBufferMode = 0;
    public static boolean rtcImageAdjustable = false;
    public static int rtcImageEnhancementStrength = 0;
    public static int rtcMaxFecPackets = 0;
    public static int rtcMaxMediaPackets = 0;
    public static int rtcMaxWaitForFrameMs = 0;
    public static int rtcNackReportDelayTime = 0;
    public static int rtcNoOutputFramesIntervalMs = 0;
    public static int rtcNumOfNotDecodedFramesThreshold = 0;
    public static int rtcOpenFEC = 0;
    public static int rtcOpenFlexFEC = 0;
    public static HmOperationDelayConfig rtcOperationDelaySdk = null;
    public static String rtcPreferVideoCodec = null;
    public static int rtcRtcpIntervalTime = 0;
    public static float rtcSaturationRatio = 0.0f;
    public static int rtcSmoothlyMaxDecoderBuffers = 0;
    public static int rtcSmoothlyMaxWaitDelay = 0;
    public static int rtcSmoothlyMinDecoderBuffers = 0;
    public static int rtcSmoothlyMinWaitDelay = 0;
    public static HmRtcStunRequestResendCfg rtcStunReqResendCfg = null;
    public static String rtcTurnAuthInfo = null;
    public static HmRtcUdpPortCfg rtcUdpPortCfg = null;
    public static boolean rtcUseDirectSurfaceView = false;
    public static boolean rtc_debug_mode = false;
    public static boolean rtc_download_audio_on = false;
    public static boolean rtc_download_video_on = false;
    public static boolean rtc_enable_transport_device = false;
    public static int rtc_frame_buffer_size_limit = 0;
    public static boolean rtc_frame_info_match_by_pts = false;
    public static boolean rtc_low_performance_device_determine_on = false;
    public static int rtc_signalv2_signalv1delaytime = 0;
    public static int rtc_upload_additional_orientation_back_camera1 = 0;
    public static int rtc_upload_additional_orientation_back_camera2 = 0;
    public static int rtc_upload_additional_orientation_front_camera1 = 0;
    public static int rtc_upload_additional_orientation_front_camera2 = 0;
    public static boolean rtc_upload_audio_on = false;
    public static boolean rtc_upload_back_camera_mirror_camera1 = false;
    public static boolean rtc_upload_back_camera_mirror_camera2 = false;
    public static boolean rtc_upload_front_camera_mirror_camera1 = false;
    public static boolean rtc_upload_front_camera_mirror_camera2 = false;
    public static boolean rtc_upload_video_on = false;
    public static boolean updateNeworksContinuableOn = false;
    public static boolean useSharedContext = false;
    public static boolean useSoftwareDecoder = false;
    public static boolean useSurfaceRender = false;
    public static boolean useTextureCloningFlag = false;
    public static boolean videoRemoteResourceAdaptationOn = true;

    static {
        useSharedContext = Build.VERSION.SDK_INT > 22;
        disable_builtin_aec = true;
        disable_builtin_agc = true;
        disable_builtin_ns = true;
        disable_webrtc_agc_and_hpf = true;
        rtcContrastRatio = 1.0f;
        rtcSaturationRatio = 1.0f;
        rtc_signalv2_signalv1delaytime = 1000;
        rtcFirstFrameInterpolationInterval = 100;
        rtcFollowingFrameInterpolationInterval = 33;
        rtcFrameInterpolationTopLimit = Integer.MAX_VALUE;
        rtcEnableSignalv1DnsResolveOptimize = true;
        hmRtcAvDelaySdk = new HmAVDelayCloudConfig.AVDelayParameters();
        rtcOperationDelaySdk = new HmOperationDelayConfig();
        rtcEnableSwitchCellularNetwork = true;
        rtcUdpPortCfg = new HmRtcUdpPortCfg(null);
        rtcStunReqResendCfg = new HmRtcStunRequestResendCfg(null);
        cacheDecodersTimeout = 6;
        rtcNumOfNotDecodedFramesThreshold = 30;
        rtcNoOutputFramesIntervalMs = 2000;
        rtcSmoothlyMinDecoderBuffers = 5;
        rtcSmoothlyMaxDecoderBuffers = 60;
        rtcSmoothlyMinWaitDelay = 3;
        rtcSmoothlyMaxWaitDelay = 30;
        rtcPreferVideoCodec = "";
        rtcImageEnhancementStrength = 150;
        configKeys = new String[]{DROP_CLIENT_CANDIDATE, OPEN_H265, CONNECTION_PING_INTERVAL_MS, HM_CONST_SMOOTHFPS_KEY, UNWRITABLE_TIME_OUT_MS, UNWRITABLE_MIN_CHECKS, NOT_USE_SHARED_CONTEXT_OVER_ANDROID6, USE_SHARED_CONTEXT_LESS_ANDROID6, NOT_USE_SHARED_CONTEXT_VIA_MODEL, USE_SHARED_CONTEXT_VIA_MODEL, NOT_USE_SHARED_CONTEXT_VIA_MODEL_EXACT, USE_SHARED_CONTEXT_VIA_MODEL_EXACT, USE_SOFTWARE_DECODER_VIA_MODEL, USE_SOFTWARE_DECODER_VIA_MODEL_EXACT, FORCE_VP8_FORMAT, RTC_FRAME_BUFFER_SIZE_LIMIT, RTC_FRAME_INFO_MATCH_BY_PTS, RTC_DATACHANNEL_ENABLED_PERCENT_V2, PORT7681_DATACHANNEL_POLICY, PORT7682_DATACHANNEL_POLICY, RTC_OPEN_FLEX_FEC, RTC_OPEN_FEC, RTC_FLEX_FEC_MEDIA_PACKETS, RTC_FLEX_FEC_FEC_PACKETS, RTC_NACK_REPORT_DELAY_TIME, RTC_CLOSE_LOW_LATENCY, RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION, RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL, RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL_EXACT, RTC_RTCP_INTERVAL_TIME, RTC_WAIT_FOR_FRAME_MS, RTC_HWDECODER_BUFFER_MODE, RTC_HM_NACK_BUFFER_CONFIG, USE_TEXTURE_CLONING_FLAG, RTC_HM_BAD_FRAME_DETECT_CONFIG, RTC_IMAGE_ADJUSTABLE, RTC_IMAGE_BRIGHTNESS_RATIO, RTC_IMAGE_CONTRAST_RATIO, RTC_IMAGE_SATURATION_RATIO, RTC_X86_NOT_USE_SURFACE_RENDER, RTC_USE_DIRECT_SURFACE_VIEW, RTC_USE_DIRECT_SURFACE_VIEW_EXACT, RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING, RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_EXACT, RTC_SIGNALV2_SIGNALV1DELAYTIME, RTC_ENABLE_FRAME_INTERPOLATION, RTC_FIRST_FRAME_INTERPOLATION_INTERVAL, RTC_FOLLOWING_FRAME_INTERPOLATION_INTERVAL, RTC_FRAME_INTERPOLATION_TOP_LIMIT, RTC_ENABLE_SIGNALV1_DNSRESOLVE_OPTIMIZE, RTC_DOWNLOAD_AUDIO_ON, RTC_DOWNLOAD_VIDEO_ON, PLAYOUT_DELAY_MODE, FORCED_PLAYOUT_DELAY_MIN, FORCED_PLAYOUT_DELAY_MAX, MAX_ALLOWED_FRAMEBUFFER_SIZE_IN_NORMAL, RTC_ENABLE_TURN_PROTOCOL, RTC_ENABLE_SRTP_CIPHER_REPORT, RTC_ENABLE_NETWORK_ACCELERATE, RTC_ENABLE_SWITCH_CELLULAR_NETWORK, RTC_UDP_PORT_CONFIG, RTC_STUNREQ_RESEND_CONFIG, UPDATE_NETWORKS_CONTINUABLE_ON};
        newConfigKeys = new String[]{RTC_USE_DIRECT_SURFACE_VIEW_WHITE_BLACK_LIST, RTC_USE_DIRECT_SURFACE_VIEW_V2, RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_WHITE_BLACK_LIST, RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_V2, RTC_FORCE_EGL10, RTC_FORCE_EGL10_V2, RTC_EGL_MONOCHROME_OFF, RTC_HM_BAD_FRAME_DETECT_CONFIG_V2, RTC_HM_BAD_FRAME_DETECT_CONFIG_SWITCH_FOR_V2, HMRTC_AV_Delay_SDK, VIDEO_REMOTE_RESOURCE_ADAPTATION_ON, RTC_ENABLE_SURFACE_SWITCH, RTC_ENABLE_WEAKLY_NET_REPORT, RTC_UPLOAD_AUDIO_CONFIG, RTC_NO_OUTPUT_LONG_TIME, RTC_SMOOTHLY_DECODING, RTC_ENABLE_FRAME_INTERPOLATION_V2, RTC_OPERATION_DELAY_SDK, RTC_ENABLE_REMOVE_SEI, RTC_PREFER_VIDEO_CODEC, RTC_ANABLE_ENCODER_H264_HP, RTC_ENABLE_VIDEO_FRAME_ELAPSED_TIME_REPORT, RTC_ENABLE_MEDIA_CODEC_VIDEO_DECODER_LOW_LATENCY, RTC_ENABLE_SHARE_STREAMING, RTC_ENABLE_IMAGE_ENHANCEMENT};
        newConfigKeysWithNoCid = new String[]{FORCE_H264_FORMAT_V2, RTC_ENABLE_CACHE_DECODERS};
        KEY_RTC_FIELD_TRIALS = "rtc_trial_config";
        KEY_RTC_FIELD_FEC_TRIALS = "rtc_trial_config_fec";
    }

    public static boolean dropClientCandidate(String str) throws Exception {
        String str2;
        HmRtcCanaryConfig hmRtcCanaryConfig = dropClientCandidateConfig;
        if (hmRtcCanaryConfig != null && (str2 = hmRtcCanaryConfig.roomID) != null && str2.equalsIgnoreCase(str)) {
            return dropClientCandidateConfig.opened;
        }
        HmRtcCanaryConfig hmRtcCanaryConfig2 = new HmRtcCanaryConfig(str, DROP_CLIENT_CANDIDATE, drop_client_candidate_percent, false);
        dropClientCandidateConfig = hmRtcCanaryConfig2;
        return hmRtcCanaryConfig2.opened;
    }

    public static void enableSurfaceRender(boolean z10) {
        useSurfaceRender = z10;
    }

    public static String getCloudRtcFieldTrials() {
        String str = mCloudRtcFieldTrials;
        return str == null ? "" : str;
    }

    public static int getConnectionPingInterval() {
        return iceStableWritableConnectionPingInterval;
    }

    @Nullable
    private static String getCpuName() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        FileReader fileReader;
        String str = null;
        try {
            fileReader = new FileReader("/proc/cpuinfo");
            try {
                bufferedReader = new BufferedReader(fileReader);
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        if (line.startsWith("Hardware")) {
                            str = line;
                            break;
                        }
                    } catch (IOException unused) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        if (fileReader != null) {
                        }
                        Logging.d(TAG, "CPU: " + str + ", OS version: " + Build.VERSION.SDK_INT);
                        return str;
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (fileReader == null) {
                            throw th;
                        }
                        try {
                            fileReader.close();
                            throw th;
                        } catch (IOException unused4) {
                            throw th;
                        }
                    }
                }
                try {
                    bufferedReader.close();
                } catch (IOException unused5) {
                }
            } catch (IOException unused6) {
                bufferedReader = null;
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
            }
        } catch (IOException unused7) {
            fileReader = null;
            bufferedReader = null;
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
            fileReader = null;
        }
        try {
            fileReader.close();
        } catch (IOException unused8) {
        }
        Logging.d(TAG, "CPU: " + str + ", OS version: " + Build.VERSION.SDK_INT);
        return str;
    }

    public static String[] getDebugModeTagList() {
        return HmRtcSdkDebugCfg.getDebugTagList();
    }

    public static String getHMRTCValue(String str, String str2) {
        Map<String, String> map;
        return (str == null || (map = mHMRTCloudConfig) == null || !map.containsKey(str)) ? str2 : mHMRTCloudConfig.get(str);
    }

    public static Map<String, String> getHMRTCValueNativeMap() {
        return mHMRTCloudConfig;
    }

    public static String getHmBadFrameDetectConfigParams() {
        return hmBadFrameDetectConfigParams;
    }

    public static int getHmConstSmoothFps() {
        return hm_const_smoothfps;
    }

    public static int getIceUnwritableMinChecks() {
        return iceUnwritableMinChecks;
    }

    public static int getIceUnwritableTimeMs() {
        return iceUnwritableTimeMs;
    }

    public static int getRtcMaxFecPackets() {
        return Math.min(Math.max(rtcMaxFecPackets, 1), 100);
    }

    public static int getRtcMaxMediaPackets() {
        return Math.min(Math.max(rtcMaxMediaPackets, 1), 100);
    }

    public static boolean isFlexFecOpen() {
        return rtcOpenFlexFEC > 0;
    }

    public static boolean isLowPerformanceDevice() {
        boolean z10 = Build.VERSION.SDK_INT <= 23;
        boolean z11 = !Build.HARDWARE.toLowerCase().contains("qcom");
        boolean z12 = true;
        for (String str : Build.SUPPORTED_64_BIT_ABIS) {
            if (str != null && str.length() > 0) {
                z12 = false;
            }
        }
        return z10 || z11 || z12;
    }

    private static boolean matchCPU(String str) throws Throwable {
        int i10;
        int i11;
        Logging.d(TAG, "Filter CPU for useShareContext: " + str);
        String cpuName = getCpuName();
        if (TextUtils.isEmpty(cpuName)) {
            return useSharedContext;
        }
        String[] strArrSplit = str.split("]");
        if (strArrSplit.length <= 0) {
            return useSharedContext;
        }
        for (String str2 : strArrSplit) {
            String strReplace = str2.replace("[", "");
            if (!TextUtils.isEmpty(strReplace)) {
                String[] strArrSplit2 = strReplace.split(",");
                if (strArrSplit2.length >= 2 && cpuName.contains(strArrSplit2[0].trim()) && (i10 = Integer.parseInt(strArrSplit2[1].trim())) > 0 && (i11 = Build.VERSION.SDK_INT) <= i10) {
                    return i11 <= 22;
                }
            }
        }
        return useSharedContext;
    }

    private static boolean matchModel(boolean z10, String str, boolean z11, boolean z12) {
        int i10;
        int i11;
        String strReplace = Build.MODEL.replace(",", "");
        Logging.d(TAG, "Filter Model for useShareContext: " + str + ", " + z10 + ", Model: " + strReplace + ", os level: " + Build.VERSION.SDK_INT);
        if (TextUtils.isEmpty(strReplace)) {
            return z11;
        }
        String[] strArrSplit = str.split("]");
        if (strArrSplit.length <= 0) {
            return z11;
        }
        for (String str2 : strArrSplit) {
            String strReplace2 = str2.replace("[", "");
            if (!TextUtils.isEmpty(strReplace2)) {
                String[] strArrSplit2 = strReplace2.split(",");
                if (strArrSplit2.length < 2) {
                    continue;
                } else if (z12) {
                    if (strReplace.equalsIgnoreCase(strArrSplit2[0].trim()) && (i11 = Integer.parseInt(strArrSplit2[1].trim())) > 0 && Build.VERSION.SDK_INT <= i11) {
                        return z10;
                    }
                } else if (strReplace.contains(strArrSplit2[0].trim()) && (i10 = Integer.parseInt(strArrSplit2[1].trim())) > 0 && Build.VERSION.SDK_INT <= i10) {
                    return z10;
                }
            }
        }
        return z11;
    }

    private static boolean matchSurfaceRender(String str) {
        int i10;
        Logging.d(TAG, "Filter Model for useSurfaceRender : " + str);
        String str2 = Build.MODEL;
        if (TextUtils.isEmpty(str2)) {
            Logging.e(TAG, "model is empty");
            return true;
        }
        String[] strArrSplit = str.split("]");
        if (strArrSplit.length <= 0) {
            return true;
        }
        for (String str3 : strArrSplit) {
            String strReplace = str3.replace("[", "");
            if (!TextUtils.isEmpty(strReplace)) {
                String[] strArrSplit2 = strReplace.split(",");
                if (strArrSplit2.length >= 2 && !strArrSplit2[0].isEmpty() && str2.replace(" ", "").equalsIgnoreCase(strArrSplit2[0].replace(" ", "")) && (i10 = Integer.parseInt(strArrSplit2[1].trim())) > 0 && Build.VERSION.SDK_INT == i10) {
                    Logging.d(TAG, "match success , disable use surfaceRender , model name is " + str2 + ",osVersion is " + i10);
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean openH265() {
        HmRtcCanaryConfig hmRtcCanaryConfig = h265Switch;
        if (hmRtcCanaryConfig != null) {
            return hmRtcCanaryConfig.opened;
        }
        Logging.e(TAG, "H265 config is null, default is close.");
        return false;
    }

    public static void parseAudioUploadConfig(String str) {
        Matcher matcher = Pattern.compile(".*switches\\s*:\\s*(\\{.+\\}).*").matcher(str);
        if (matcher.matches()) {
            try {
                JSONObject jSONObject = new JSONObject(matcher.group(1));
                no_audio_processing = jSONObject.has("no_audio_processing") ? jSONObject.getBoolean("no_audio_processing") : no_audio_processing;
                disable_builtin_aec = jSONObject.has("disable_builtin_aec") ? jSONObject.getBoolean("disable_builtin_aec") : disable_builtin_aec;
                disable_builtin_agc = jSONObject.has("disable_builtin_agc") ? jSONObject.getBoolean("disable_builtin_agc") : disable_builtin_agc;
                disable_builtin_ns = jSONObject.has("disable_builtin_ns") ? jSONObject.getBoolean("disable_builtin_ns") : disable_builtin_ns;
                disable_webrtc_agc_and_hpf = jSONObject.has("disable_webrtc_agc_and_hpf") ? jSONObject.getBoolean("disable_webrtc_agc_and_hpf") : disable_webrtc_agc_and_hpf;
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        Logging.d(TAG, "parseAudioUploadConfig, audio_processing: " + no_audio_processing + ", aec: " + disable_builtin_aec + ", agc: " + disable_builtin_agc + ", ns: " + disable_builtin_ns + ", w_a_h: " + disable_webrtc_agc_and_hpf);
    }

    private static void parseCloudRtcFieldTrials(HashMap<String, String> map) {
        if (map != null && map.containsKey(KEY_RTC_FIELD_TRIALS)) {
            mCloudRtcFieldTrials = map.get(KEY_RTC_FIELD_TRIALS);
        }
        if (map != null && map.containsKey(KEY_RTC_FIELD_FEC_TRIALS)) {
            String str = mCloudRtcFieldTrials;
            if (str == null) {
                mCloudRtcFieldTrials = map.get(KEY_RTC_FIELD_FEC_TRIALS);
            } else if (str.charAt(str.length() - 1) == '/') {
                mCloudRtcFieldTrials += map.get(KEY_RTC_FIELD_FEC_TRIALS);
            } else {
                mCloudRtcFieldTrials += '/' + map.get(KEY_RTC_FIELD_FEC_TRIALS);
            }
        }
        if (mCloudRtcFieldTrials == null) {
            mCloudRtcFieldTrials = "";
        }
        Logging.d(TAG, "RtcConfig FieldTrials: " + mCloudRtcFieldTrials);
    }

    private static boolean parseDebugModeParam(HashMap<String, String> map, String str) {
        String str2 = map.get(RTC_DEBUG_MODE);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        HmRtcSdkDebugCfg hmRtcSdkDebugCfg = new HmRtcSdkDebugCfg(str2, str);
        mHmRtcSdkDebugCfg = hmRtcSdkDebugCfg;
        if (!hmRtcSdkDebugCfg.isEnable()) {
            return false;
        }
        mHmRtcSdkDebugCfg.rebuildRtcCfgParam(map);
        return true;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static void parseHmNewRtcConfig(String str) {
        if (str == null || str.isEmpty()) {
            Logging.w(TAG, "parseHmNewRtcConfig: cloudId is null or empty");
            return;
        }
        Map<String, String> map = mNewRTCloudConfig;
        if (map == null || map.isEmpty()) {
            Logging.w(TAG, "parseHmNewRtcConfig: newConfigMaps is null or empty");
            return;
        }
        HmDataChannelDeviceSwitch.getInstance().setCloudId(str);
        for (String str2 : newConfigKeys) {
            String str3 = mNewRTCloudConfig.get(str2);
            if (!TextUtils.isEmpty(str3)) {
                Logging.d(TAG, "parseHmNewRtcConfig: key :" + str2 + ",value:" + str3);
                HmRtcSdkCloudCfg hmRtcSdkCloudCfg = new HmRtcSdkCloudCfg(str2, str3, str);
                Logging.d(TAG, "parseHmNewRtcConfig:" + str2 + " enable:" + hmRtcSdkCloudCfg.isEnable() + ",configured scope cloudId :" + hmRtcSdkCloudCfg.getCidTailNum() + ", in-service (use) cloudId:" + str);
                FiledStringParser filedStringParser = new FiledStringParser(str3);
                str2.hashCode();
                byte b10 = -1;
                switch (str2.hashCode()) {
                    case -1737280302:
                        if (str2.equals(RTC_NO_OUTPUT_LONG_TIME)) {
                            b10 = 0;
                        }
                        break;
                    case -1679944566:
                        if (str2.equals(RTC_ENABLE_IMAGE_ENHANCEMENT)) {
                            b10 = 1;
                        }
                        break;
                    case -1249617730:
                        if (str2.equals(RTC_SMOOTHLY_DECODING)) {
                            b10 = 2;
                        }
                        break;
                    case -1244215193:
                        if (str2.equals(RTC_ENABLE_FRAME_INTERPOLATION_V2)) {
                            b10 = 3;
                        }
                        break;
                    case -1181352383:
                        if (str2.equals(RTC_PREFER_VIDEO_CODEC)) {
                            b10 = 4;
                        }
                        break;
                    case -896177468:
                        if (str2.equals(RTC_USE_DIRECT_SURFACE_VIEW_V2)) {
                            b10 = 5;
                        }
                        break;
                    case -490796546:
                        if (str2.equals(RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_V2)) {
                            b10 = 6;
                        }
                        break;
                    case -59820362:
                        if (str2.equals(RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING_WHITE_BLACK_LIST)) {
                            b10 = 7;
                        }
                        break;
                    case -3327381:
                        if (str2.equals(RTC_UPLOAD_AUDIO_CONFIG)) {
                            b10 = 8;
                        }
                        break;
                    case 77201116:
                        if (str2.equals(RTC_HM_BAD_FRAME_DETECT_CONFIG_SWITCH_FOR_V2)) {
                            b10 = 9;
                        }
                        break;
                    case 368145696:
                        if (str2.equals(RTC_ENABLE_GET_WIFI_SSID_DEFAULT)) {
                            b10 = 10;
                        }
                        break;
                    case 542127296:
                        if (str2.equals(RTC_EGL_MONOCHROME_OFF)) {
                            b10 = 11;
                        }
                        break;
                    case 775542878:
                        if (str2.equals(RTC_ANABLE_ENCODER_H264_HP)) {
                            b10 = 12;
                        }
                        break;
                    case 1028769020:
                        if (str2.equals(RTC_USE_DIRECT_SURFACE_VIEW_WHITE_BLACK_LIST)) {
                            b10 = 13;
                        }
                        break;
                    case 1044273636:
                        if (str2.equals(RTC_ENABLE_SURFACE_SWITCH)) {
                            b10 = 14;
                        }
                        break;
                    case 1230633970:
                        if (str2.equals(RTC_ENABLE_WEAKLY_NET_REPORT)) {
                            b10 = 15;
                        }
                        break;
                    case 1261299980:
                        if (str2.equals(HMRTC_AV_Delay_SDK)) {
                            b10 = 16;
                        }
                        break;
                    case 1491293423:
                        if (str2.equals(RTC_ENABLE_VIDEO_FRAME_ELAPSED_TIME_REPORT)) {
                            b10 = BinaryMemcacheOpcodes.SETQ;
                        }
                        break;
                    case 1502409672:
                        if (str2.equals(RTC_OPERATION_DELAY_SDK)) {
                            b10 = BinaryMemcacheOpcodes.ADDQ;
                        }
                        break;
                    case 1719432420:
                        if (str2.equals(RTC_ENABLE_SHARE_STREAMING)) {
                            b10 = BinaryMemcacheOpcodes.REPLACEQ;
                        }
                        break;
                    case 1811760495:
                        if (str2.equals(VIDEO_REMOTE_RESOURCE_ADAPTATION_ON)) {
                            b10 = BinaryMemcacheOpcodes.DELETEQ;
                        }
                        break;
                    case 1812141175:
                        if (str2.equals(RTC_FORCE_EGL10)) {
                            b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                        }
                        break;
                    case 2045829114:
                        if (str2.equals(RTC_ENABLE_REMOVE_SEI)) {
                            b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                        }
                        break;
                    case 2053896004:
                        if (str2.equals(RTC_FORCE_EGL10_V2)) {
                            b10 = BinaryMemcacheOpcodes.QUITQ;
                        }
                        break;
                    case 2136912370:
                        if (str2.equals(RTC_ENABLE_MEDIA_CODEC_VIDEO_DECODER_LOW_LATENCY)) {
                            b10 = BinaryMemcacheOpcodes.FLUSHQ;
                        }
                        break;
                }
                switch (b10) {
                    case 0:
                        rtcEnableNoOutputLongTimeRequestKeyFrame = hmRtcSdkCloudCfg.isEnable();
                        rtcNoOutputFramesIntervalMs = filedStringParser.getIntValue("interval", 2000);
                        rtcNumOfNotDecodedFramesThreshold = filedStringParser.getIntValue("threshold", 30);
                        break;
                    case 1:
                        rtcEnableImageEnhancement = hmRtcSdkCloudCfg.isEnable();
                        rtcImageEnhancementStrength = filedStringParser.getIntValue("strength", 150);
                        break;
                    case 2:
                        rtcEnableSmoothlyDecoding = hmRtcSdkCloudCfg.isEnable();
                        rtcEnableSmoothlyDecodingDebug = hmRtcSdkCloudCfg.isEnableDebugLog();
                        rtcSmoothlyMinDecoderBuffers = filedStringParser.getIntValue("min_buffers", 5);
                        rtcSmoothlyMaxDecoderBuffers = filedStringParser.getIntValue("max_buffers", 60);
                        rtcSmoothlyMinWaitDelay = filedStringParser.getIntValue("min_wait_delay", 3);
                        rtcSmoothlyMaxWaitDelay = filedStringParser.getIntValue("max_wait_delay", 30);
                        break;
                    case 3:
                        rtcEnableFrameInterpolation = hmRtcSdkCloudCfg.isEnable();
                        rtcFirstFrameInterpolationInterval = filedStringParser.getIntValue("first_interval", 100);
                        rtcFollowingFrameInterpolationInterval = filedStringParser.getIntValue("following_interval", 33);
                        rtcFrameInterpolationTopLimit = filedStringParser.getIntValue("top_limit", Integer.MAX_VALUE);
                        break;
                    case 4:
                        if (hmRtcSdkCloudCfg.isEnable()) {
                            rtcPreferVideoCodec = filedStringParser.getStringValue("codec_type", "");
                            Logging.d(TAG, "cloud configured rtcPreferVideoCodec:" + rtcPreferVideoCodec);
                        }
                        break;
                    case 5:
                    case 13:
                        rtcUseDirectSurfaceView = hmRtcSdkCloudCfg.isEnable();
                        Logging.d(TAG, str2 + ": " + rtcUseDirectSurfaceView);
                        break;
                    case 6:
                    case 7:
                        rtcEnableMediaCodecOutputDropping = hmRtcSdkCloudCfg.isEnable();
                        break;
                    case 8:
                        if (hmRtcSdkCloudCfg.isEnable()) {
                            parseAudioUploadConfig(str3);
                        }
                        break;
                    case 9:
                        rtcBadFrameDetectConfigSwitchV2 = hmRtcSdkCloudCfg.isEnable();
                        if (!TextUtils.isEmpty(hmBadFrameDetectConfigParams)) {
                            Logging.d(TAG, " RTC_HM_BAD_FRAME_DETECT_CONFIG: " + hmBadFrameDetectConfigParams + " reset to empty.");
                            hmBadFrameDetectConfigParams = "";
                        }
                        break;
                    case 10:
                        rtcEnableGetWifiSsidDefault = hmRtcSdkCloudCfg.isEnable();
                        break;
                    case 11:
                        rtcEglMonochromeOff = hmRtcSdkCloudCfg.isEnable();
                        break;
                    case 12:
                        rtcEnableEncoderH264HP = hmRtcSdkCloudCfg.isEnable();
                        break;
                    case 14:
                        rtcEnableSurfaceSwitch = hmRtcSdkCloudCfg.isEnable();
                        Logging.d(TAG, str2 + ": " + rtcEnableSurfaceSwitch);
                        break;
                    case 15:
                        rtcEnableWeaklyNetReport = hmRtcSdkCloudCfg.isEnable();
                        rtcEnableWeaklyNetDebug = hmRtcSdkCloudCfg.isEnableDebugLog();
                        break;
                    case 16:
                        hmRtcAvDelaySdk.enable = hmRtcSdkCloudCfg.isEnable();
                        if (hmRtcAvDelaySdk.enable) {
                            new HmAVDelayCloudConfig().parseAVDelayCloudConfig(str3, hmRtcAvDelaySdk);
                        }
                        break;
                    case 17:
                        rtcEnableVideoFrameElapsedTimeReport = hmRtcSdkCloudCfg.isEnable();
                        break;
                    case 18:
                        rtcOperationDelaySdk.mEnable = hmRtcSdkCloudCfg.isEnable();
                        rtcOperationDelaySdk.parseConfig(str3);
                        break;
                    case 19:
                        rtcEnableShareStreaming = hmRtcSdkCloudCfg.isEnable();
                        break;
                    case 20:
                        videoRemoteResourceAdaptationOn = hmRtcSdkCloudCfg.isEnable();
                        Logging.d(TAG, str2 + ": " + videoRemoteResourceAdaptationOn);
                        break;
                    case 21:
                    case 23:
                        rtcForceEgl10 = hmRtcSdkCloudCfg.isEnable();
                        break;
                    case 22:
                        rtcEnableRemoveSei = hmRtcSdkCloudCfg.isEnable();
                        break;
                    case 24:
                        rtcEnableMediaCodecVideoDecoderLowLatency = hmRtcSdkCloudCfg.isEnable();
                        break;
                }
            }
        }
        if (rtcBadFrameDetectConfigSwitchV2) {
            String str4 = mNewRTCloudConfig.get(RTC_HM_BAD_FRAME_DETECT_CONFIG_V2);
            if (!TextUtils.isEmpty(str4)) {
                hmBadFrameDetectConfigParams = str4;
                Logging.d(TAG, " RTC_HM_BAD_FRAME_DETECT_CONFIG_V2: " + hmBadFrameDetectConfigParams);
            }
        }
        mNewRTCloudConfig.clear();
        mNewRTCloudConfig = null;
    }

    public static void parseRtcConfig(HashMap<String, String> map, String str) {
        resetConfigValues();
        if (parseDebugModeParam(map, str)) {
            rtc_debug_mode = true;
        }
        parseRtcConfig(map);
    }

    private static void parseUploadVideoParam(HashMap<String, String> map) {
        boolean z10;
        boolean z11;
        boolean z12;
        if (map != null) {
            if (map.containsKey(RTC_UPLOAD_AUDIO_ON)) {
                try {
                    rtc_upload_audio_on = Integer.valueOf(map.get(RTC_UPLOAD_AUDIO_ON)).intValue() > 0;
                    try {
                        Logging.d(TAG, "rtc_upload_audio_on: " + rtc_upload_audio_on);
                        z10 = true;
                    } catch (NumberFormatException e10) {
                        e = e10;
                        z10 = true;
                        e.printStackTrace();
                    }
                } catch (NumberFormatException e11) {
                    e = e11;
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (map.containsKey(RTC_UPLOAD_VIDEO_ON)) {
                try {
                    rtc_upload_video_on = Integer.valueOf(map.get(RTC_UPLOAD_VIDEO_ON)).intValue() > 0;
                    try {
                        Logging.d(TAG, "rtc_upload_video_on: " + rtc_upload_video_on);
                        z11 = true;
                    } catch (NumberFormatException e12) {
                        e = e12;
                        z11 = true;
                        e.printStackTrace();
                    }
                } catch (NumberFormatException e13) {
                    e = e13;
                    z11 = false;
                }
            } else {
                z11 = false;
            }
            if (map.containsKey(RTC_LOW_PERFORMANCE_DEVICE_DETERMINE_ON)) {
                try {
                    rtc_low_performance_device_determine_on = Integer.valueOf(map.get(RTC_LOW_PERFORMANCE_DEVICE_DETERMINE_ON)).intValue() > 0;
                    Logging.d(TAG, "rtc_low_performance_device_determine_on: " + rtc_low_performance_device_determine_on);
                } catch (NumberFormatException e14) {
                    e14.printStackTrace();
                }
            }
            if (map.containsKey(RTC_UPLOAD_ADDITIONAL_ORIENTATION_FRONT_CAMERA1)) {
                try {
                    rtc_upload_additional_orientation_front_camera1 = Integer.valueOf(map.get(RTC_UPLOAD_ADDITIONAL_ORIENTATION_FRONT_CAMERA1)).intValue();
                    Logging.d(TAG, "rtc_upload_additional_orientation_front_camera1: " + rtc_upload_additional_orientation_front_camera1);
                } catch (NumberFormatException e15) {
                    e15.printStackTrace();
                }
            }
            if (map.containsKey(RTC_UPLOAD_ADDITIONAL_ORIENTATION_BACK_CAMERA1)) {
                try {
                    rtc_upload_additional_orientation_back_camera1 = Integer.valueOf(map.get(RTC_UPLOAD_ADDITIONAL_ORIENTATION_BACK_CAMERA1)).intValue();
                    Logging.d(TAG, "rtc_upload_additional_orientation_back_camera1: " + rtc_upload_additional_orientation_back_camera1);
                } catch (NumberFormatException e16) {
                    e16.printStackTrace();
                }
            }
            if (map.containsKey(RTC_UPLOAD_FRONT_CAMERA_MIRROR_CAMERA1)) {
                try {
                    rtc_upload_front_camera_mirror_camera1 = Integer.valueOf(map.get(RTC_UPLOAD_FRONT_CAMERA_MIRROR_CAMERA1)).intValue() > 0;
                    Logging.d(TAG, "rtc_upload_front_camera_mirror_camera1: " + rtc_upload_front_camera_mirror_camera1);
                } catch (NumberFormatException e17) {
                    e17.printStackTrace();
                }
            }
            if (map.containsKey(RTC_UPLOAD_BACK_CAMERA_MIRROR_CAMERA1)) {
                try {
                    rtc_upload_back_camera_mirror_camera1 = Integer.valueOf(map.get(RTC_UPLOAD_BACK_CAMERA_MIRROR_CAMERA1)).intValue() > 0;
                    Logging.d(TAG, "rtc_upload_back_camera_mirror_camera1: " + rtc_upload_back_camera_mirror_camera1);
                } catch (NumberFormatException e18) {
                    e18.printStackTrace();
                }
            }
            if (map.containsKey(RTC_UPLOAD_ADDITIONAL_ORIENTATION_FRONT_CAMERA2)) {
                try {
                    rtc_upload_additional_orientation_front_camera2 = Integer.valueOf(map.get(RTC_UPLOAD_ADDITIONAL_ORIENTATION_FRONT_CAMERA2)).intValue();
                    Logging.d(TAG, "rtc_upload_additional_orientation_front_camera2: " + rtc_upload_additional_orientation_front_camera2);
                } catch (NumberFormatException e19) {
                    e19.printStackTrace();
                }
            }
            if (map.containsKey(RTC_UPLOAD_ADDITIONAL_ORIENTATION_BACK_CAMERA2)) {
                try {
                    rtc_upload_additional_orientation_back_camera2 = Integer.valueOf(map.get(RTC_UPLOAD_ADDITIONAL_ORIENTATION_BACK_CAMERA2)).intValue();
                    Logging.d(TAG, "rtc_upload_additional_orientation_back_camera2: " + rtc_upload_additional_orientation_back_camera2);
                } catch (NumberFormatException e20) {
                    e20.printStackTrace();
                }
            }
            if (map.containsKey(RTC_UPLOAD_FRONT_CAMERA_MIRROR_CAMERA2)) {
                try {
                    rtc_upload_front_camera_mirror_camera2 = Integer.valueOf(map.get(RTC_UPLOAD_FRONT_CAMERA_MIRROR_CAMERA2)).intValue() > 0;
                    Logging.d(TAG, "rtc_upload_front_camera_mirror_camera2: " + rtc_upload_front_camera_mirror_camera2);
                } catch (NumberFormatException e21) {
                    e21.printStackTrace();
                }
            }
            if (map.containsKey(RTC_UPLOAD_BACK_CAMERA_MIRROR_CAMERA2)) {
                try {
                    rtc_upload_back_camera_mirror_camera2 = Integer.valueOf(map.get(RTC_UPLOAD_BACK_CAMERA_MIRROR_CAMERA2)).intValue() > 0;
                    Logging.d(TAG, "rtc_upload_back_camera_mirror_camera2: " + rtc_upload_back_camera_mirror_camera2);
                } catch (NumberFormatException e22) {
                    e22.printStackTrace();
                }
            }
        } else {
            z10 = false;
            z11 = false;
        }
        String str = map.get(RTC_UPLOAD_VIDEO_RESOLUTION);
        String str2 = map.get(RTC_UPLOAD_VIDEO_FPS);
        String str3 = map.get(RTC_UPLOAD_VIDEO_MIN_BITRATE);
        String str4 = map.get(RTC_UPLOAD_VIDEO_MAX_BITRATE);
        Logging.d(TAG, "parseUploadVideoParam: resolution=" + str + ";fps=" + str2 + ";minBitrate=" + str3 + ";maxBitrate=" + str4);
        if (TextUtils.isEmpty(str) || !str.contains("x") || TextUtils.isEmpty(str2)) {
            z12 = false;
        } else {
            try {
                HmCameraSettings hmCameraSettings = new HmCameraSettings();
                String[] strArrSplit = str.split("x");
                hmCameraSettings.setWidth(Integer.parseInt(strArrSplit[0]));
                hmCameraSettings.setHeight(Integer.parseInt(strArrSplit[1]));
                hmCameraSettings.setFrameRate(Integer.parseInt(str2));
                HmCameraManager.getInstance().setCameraCaptureFormat(hmCameraSettings);
                z12 = true;
            } catch (Exception e23) {
                e23.printStackTrace();
                z12 = false;
            }
        }
        if (!TextUtils.isEmpty(str3)) {
            try {
                HmCameraManager.getInstance().setVideoBitrate(Integer.valueOf(Integer.parseInt(str3)), 0);
                z12 = true;
            } catch (NumberFormatException e24) {
                e24.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(str4)) {
            try {
                HmCameraManager.getInstance().setVideoBitrate(Integer.valueOf(Integer.parseInt(str4)), 1);
                z12 = true;
            } catch (NumberFormatException e25) {
                e25.printStackTrace();
            }
        }
        if (z12) {
            if (!z10 && !rtc_upload_audio_on) {
                rtc_upload_audio_on = true;
                Logging.d(TAG, "The parameter rtc_upload_audio_on is deduced to true.");
            }
            if (!z11 && !rtc_upload_video_on) {
                rtc_upload_video_on = true;
                Logging.d(TAG, "The parameter rtc_upload_video_on is deduced to true.");
            }
        }
        Logging.d(TAG, "The parameter rtc_upload_audio_on is set with " + rtc_upload_audio_on + " finally.");
        Logging.d(TAG, "The parameter rtc_upload_video_on is set with " + rtc_upload_video_on + " finally.");
        HmCameraManager.getInstance().setCameraExternalControlDefaultValue(rtc_upload_additional_orientation_front_camera1, rtc_upload_additional_orientation_back_camera1, rtc_upload_front_camera_mirror_camera1, rtc_upload_back_camera_mirror_camera1, rtc_upload_additional_orientation_front_camera2, rtc_upload_additional_orientation_back_camera2, rtc_upload_front_camera_mirror_camera2, rtc_upload_back_camera_mirror_camera2);
    }

    private static void resetConfigValues() {
        HmDataChannelDeviceSwitch.getInstance().setEnablePara(String.valueOf(0));
        drop_client_candidate_percent = 0;
        h265Switch = null;
        useSharedContext = Build.VERSION.SDK_INT > 22;
        useTextureCloningFlag = false;
        forceVP8Format = false;
        forceH264Format = false;
        useSoftwareDecoder = false;
        rtc_frame_buffer_size_limit = 0;
        rtc_frame_info_match_by_pts = false;
        rtcOpenFlexFEC = 0;
        rtcOpenFEC = -1;
        rtcMaxMediaPackets = 1;
        rtcMaxFecPackets = 1;
        isCloseDecoderLowLatency = false;
        rtcNackReportDelayTime = 0;
        rtcRtcpIntervalTime = 1000;
        rtcMaxWaitForFrameMs = 3000;
        rtcHwDecoderBufferMode = 0;
        hmNackBufferLimit = 0;
        hmNackBufferSalt = 0;
        hmNackBufferForceLimit = 0;
        rtcImageAdjustable = false;
        rtcBrightnessRatio = 0.0f;
        rtcContrastRatio = 1.0f;
        rtcSaturationRatio = 1.0f;
        rtcUseDirectSurfaceView = false;
        rtcEnableMediaCodecOutputDropping = false;
        rtcForceEgl10 = false;
        rtcEglMonochromeOff = false;
        rtcEnableFrameInterpolation = false;
        rtcFirstFrameInterpolationInterval = 100;
        rtcFollowingFrameInterpolationInterval = 33;
        rtcFrameInterpolationTopLimit = Integer.MAX_VALUE;
        isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException = false;
        mHMRTCloudConfig = new HashMap();
        rtc_upload_audio_on = false;
        rtc_upload_video_on = false;
        rtc_upload_additional_orientation_front_camera1 = 0;
        rtc_upload_additional_orientation_back_camera1 = 0;
        rtc_upload_front_camera_mirror_camera1 = false;
        rtc_upload_back_camera_mirror_camera1 = false;
        rtc_upload_additional_orientation_front_camera2 = 0;
        rtc_upload_additional_orientation_back_camera2 = 0;
        rtc_upload_front_camera_mirror_camera2 = false;
        rtc_upload_back_camera_mirror_camera2 = false;
        rtc_download_audio_on = true;
        rtc_download_video_on = true;
        updateNeworksContinuableOn = false;
        rtc_low_performance_device_determine_on = true;
        playout_delay_mode = 0;
        forced_playout_delay_min = 0;
        forced_playout_delay_max = 0;
        max_allowed_framebuffer_size_in_normal = 180;
        hmBadFrameDetectConfigParams = "";
        rtcBadFrameDetectConfigSwitchV2 = false;
        mNewRTCloudConfig = new HashMap();
        mNewRTCloudConfigWithNoCid = new HashMap();
        hmRtcAvDelaySdk.reset();
        videoRemoteResourceAdaptationOn = true;
        rtcEnableSurfaceSwitch = false;
        rtcEnableSrtpCipherReport = false;
        rtc_debug_mode = false;
        mHmRtcSdkDebugCfg = null;
        rtcEnableWeaklyNetReport = false;
        rtcEnableWeaklyNetDebug = false;
        rtcEnableNetworkAccelerate = false;
        rtcEnableSwitchCellularNetwork = true;
        rtcEnableCacheDecoders = false;
        cacheDecodersTimeout = 6;
        no_audio_processing = false;
        disable_builtin_aec = true;
        disable_builtin_agc = true;
        disable_builtin_ns = true;
        disable_webrtc_agc_and_hpf = true;
        rtcEnableNoOutputLongTimeRequestKeyFrame = false;
        rtcNoOutputFramesIntervalMs = 2000;
        rtcNumOfNotDecodedFramesThreshold = 30;
        rtcEnableSmoothlyDecoding = false;
        rtcEnableSmoothlyDecodingDebug = false;
        rtcSmoothlyMinDecoderBuffers = 5;
        rtcSmoothlyMaxDecoderBuffers = 60;
        rtcSmoothlyMinWaitDelay = 3;
        rtcSmoothlyMaxWaitDelay = 30;
        rtcOperationDelaySdk.reset();
        rtcEnableRemoveSei = false;
        rtcPreferVideoCodec = "";
        rtcEnableEncoderH264HP = false;
        rtcEnableVideoFrameElapsedTimeReport = false;
        rtcEnableMediaCodecVideoDecoderLowLatency = false;
        hm_const_smoothfps = -1;
        rtcEnableGetWifiSsidDefault = false;
        rtcEnableShareStreaming = false;
        rtcEnableImageEnhancement = false;
        rtcImageEnhancementStrength = 150;
    }

    public static int rtcFecType() {
        int i10 = rtcOpenFEC;
        if (i10 < -1 || i10 > 2) {
            return -1;
        }
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:191:0x0330  */
    /* JADX WARN: Code duplicated, block: B:349:0x0840  */
    /* JADX WARN: Code duplicated, block: B:395:0x08f2  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static void parseRtcConfig(HashMap<String, String> map) {
        Exception exc;
        byte b10;
        byte b11;
        if (!rtc_debug_mode) {
            resetConfigValues();
        }
        parseUploadVideoParam(map);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() != null && entry.getKey().startsWith("HMRTC_")) {
                mHMRTCloudConfig.put(entry.getKey(), entry.getValue());
            }
        }
        for (String str : newConfigKeys) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str2)) {
                mNewRTCloudConfig.put(str, str2);
                Logging.d(TAG, "new rtc config, key:" + str + ",value:" + str2);
            }
        }
        for (String str3 : newConfigKeysWithNoCid) {
            String str4 = map.get(str3);
            if (!TextUtils.isEmpty(str4)) {
                mNewRTCloudConfigWithNoCid.put(str3, str4);
                Logging.d(TAG, "new rtc config with no cid, key:" + str3 + ",value:" + str4);
            }
        }
        String[] strArr = configKeys;
        int length = strArr.length;
        int i10 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 < length) {
                String str5 = strArr[i10];
                String str6 = map.get(str5);
                if (!TextUtils.isEmpty(str6)) {
                    try {
                        switch (str5.hashCode()) {
                            case -2084180982:
                                if (str5.equals(UNWRITABLE_TIME_OUT_MS)) {
                                    b11 = 5;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -2075207589:
                                if (str5.equals(USE_SHARED_CONTEXT_LESS_ANDROID6)) {
                                    b11 = 7;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -2025909189:
                                if (str5.equals(USE_SOFTWARE_DECODER_VIA_MODEL)) {
                                    b11 = 9;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -2007180808:
                                if (str5.equals(RTC_DATACHANNEL_ENABLED_PERCENT_V2)) {
                                    b11 = 13;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -1699114657:
                                if (str5.equals(DROP_CLIENT_CANDIDATE)) {
                                    b11 = 1;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -1689634146:
                                if (str5.equals(RTC_FOLLOWING_FRAME_INTERPOLATION_INTERVAL)) {
                                    b11 = BinaryMemcacheOpcodes.GATK;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -1610985225:
                                if (str5.equals(RTC_USE_DIRECT_SURFACE_VIEW)) {
                                    b11 = BinaryMemcacheOpcodes.GATQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -1589950827:
                                if (str5.equals(RTC_RTCP_INTERVAL_TIME)) {
                                    b11 = BinaryMemcacheOpcodes.INCREMENTQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -1435390100:
                                if (str5.equals(NOT_USE_SHARED_CONTEXT_OVER_ANDROID6)) {
                                    b11 = 8;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -1429894147:
                                if (str5.equals(RTC_ENABLE_MEDIA_CODEC_OUTPUT_DROPPING)) {
                                    b11 = 31;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -1176156576:
                                if (str5.equals(RTC_HM_NACK_BUFFER_CONFIG)) {
                                    b11 = BinaryMemcacheOpcodes.FLUSHQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -1068293206:
                                if (str5.equals(UPDATE_NETWORKS_CONTINUABLE_ON)) {
                                    b11 = 42;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -1020793970:
                                if (str5.equals(RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION)) {
                                    b11 = 37;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -998679728:
                                if (str5.equals(RTC_SIGNALV2_SIGNALV1DELAYTIME)) {
                                    b11 = 32;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -976193382:
                                if (str5.equals(RTC_WAIT_FOR_FRAME_MS)) {
                                    b11 = BinaryMemcacheOpcodes.DECREMENTQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -956486969:
                                if (str5.equals(MAX_ALLOWED_FRAMEBUFFER_SIZE_IN_NORMAL)) {
                                    b11 = 46;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -883943268:
                                if (str5.equals(RTC_FLEX_FEC_MEDIA_PACKETS)) {
                                    b11 = BinaryMemcacheOpcodes.REPLACEQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -855531652:
                                if (str5.equals(RTC_IMAGE_SATURATION_RATIO)) {
                                    b11 = BinaryMemcacheOpcodes.GAT;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -536327368:
                                if (str5.equals(RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL_EXACT)) {
                                    b11 = 39;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -498014408:
                                if (str5.equals(RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL)) {
                                    b11 = 38;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -453971397:
                                if (str5.equals(RTC_ENABLE_SIGNALV1_DNSRESOLVE_OPTIMIZE)) {
                                    b11 = 47;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -351829570:
                                if (str5.equals(UNWRITABLE_MIN_CHECKS)) {
                                    b11 = 6;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -241368670:
                                if (str5.equals(RTC_ENABLE_SRTP_CIPHER_REPORT)) {
                                    b11 = com.sigmob.sdk.archives.tar.e.H;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -191261420:
                                if (str5.equals(RTC_OPEN_FLEX_FEC)) {
                                    b11 = 16;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case -5843875:
                                if (str5.equals(PORT7682_DATACHANNEL_POLICY)) {
                                    b11 = 15;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 7310900:
                                if (str5.equals(RTC_ENABLE_FRAME_INTERPOLATION)) {
                                    b11 = BinaryMemcacheOpcodes.SASL_AUTH;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 21826924:
                                if (str5.equals(RTC_ENABLE_NETWORK_ACCELERATE)) {
                                    b11 = com.sigmob.sdk.archives.tar.e.I;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 113049460:
                                if (str5.equals(RTC_X86_NOT_USE_SURFACE_RENDER)) {
                                    b11 = 0;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 245518534:
                                if (str5.equals(CONNECTION_PING_INTERVAL_MS)) {
                                    b11 = 3;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 351879468:
                                if (str5.equals(RTC_FRAME_BUFFER_SIZE_LIMIT)) {
                                    b11 = 11;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 402980350:
                                if (str5.equals(PORT7681_DATACHANNEL_POLICY)) {
                                    b11 = 14;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 534996198:
                                if (str5.equals(RTC_ENABLE_SWITCH_CELLULAR_NETWORK)) {
                                    b11 = com.sigmob.sdk.archives.tar.e.J;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 536438588:
                                if (str5.equals(RTC_FLEX_FEC_FEC_PACKETS)) {
                                    b11 = BinaryMemcacheOpcodes.ADDQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 632922591:
                                if (str5.equals(RTC_FIRST_FRAME_INTERPOLATION_INTERVAL)) {
                                    b11 = 34;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 824728421:
                                if (str5.equals(HM_CONST_SMOOTHFPS_KEY)) {
                                    b11 = 4;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 960075078:
                                if (str5.equals(RTC_FRAME_INTERPOLATION_TOP_LIMIT)) {
                                    b11 = BinaryMemcacheOpcodes.GATKQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 975361629:
                                if (str5.equals(FORCED_PLAYOUT_DELAY_MAX)) {
                                    b11 = 45;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 975361867:
                                if (str5.equals(FORCED_PLAYOUT_DELAY_MIN)) {
                                    b11 = HttpConstants.COMMA;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 999550561:
                                if (str5.equals(RTC_DOWNLOAD_AUDIO_ON)) {
                                    b11 = 40;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1020310029:
                                if (str5.equals(USE_TEXTURE_CLONING_FLAG)) {
                                    b11 = 10;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1148796973:
                                if (str5.equals(RTC_OPEN_FEC)) {
                                    b11 = BinaryMemcacheOpcodes.SETQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1152662692:
                                if (str5.equals(PLAYOUT_DELAY_MODE)) {
                                    b11 = 43;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1175025564:
                                if (str5.equals(RTC_DOWNLOAD_VIDEO_ON)) {
                                    b11 = 41;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1545927134:
                                if (str5.equals(OPEN_H265)) {
                                    b11 = 2;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1568790763:
                                if (str5.equals(RTC_IMAGE_ADJUSTABLE)) {
                                    b11 = 26;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1636492788:
                                if (str5.equals(RTC_HM_BAD_FRAME_DETECT_CONFIG)) {
                                    b11 = BinaryMemcacheOpcodes.APPENDQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1674623482:
                                if (str5.equals(RTC_HWDECODER_BUFFER_MODE)) {
                                    b11 = BinaryMemcacheOpcodes.QUITQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1735668923:
                                if (str5.equals(RTC_IMAGE_BRIGHTNESS_RATIO)) {
                                    b11 = 27;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1894900866:
                                if (str5.equals(RTC_FRAME_INFO_MATCH_BY_PTS)) {
                                    b11 = 12;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 1962705452:
                                if (str5.equals(RTC_IMAGE_CONTRAST_RATIO)) {
                                    b11 = BinaryMemcacheOpcodes.TOUCH;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            case 2146315694:
                                if (str5.equals(RTC_NACK_REPORT_DELAY_TIME)) {
                                    b11 = BinaryMemcacheOpcodes.DELETEQ;
                                } else {
                                    b11 = -1;
                                }
                                break;
                            default:
                                b11 = -1;
                                break;
                        }
                        switch (b11) {
                            case 0:
                                if (useSurfaceRender) {
                                    useSurfaceRender = matchSurfaceRender(str6);
                                }
                                break;
                            case 1:
                                drop_client_candidate_percent = Integer.parseInt(str6);
                                break;
                            case 2:
                                if (Integer.valueOf(str6).intValue() <= 0) {
                                    z10 = false;
                                }
                                h265Switch = new HmRtcCanaryConfig(OPEN_H265, z10);
                                break;
                            case 3:
                                iceStableWritableConnectionPingInterval = Integer.parseInt(str6);
                                break;
                            case 4:
                                hm_const_smoothfps = Integer.parseInt(str6);
                                break;
                            case 5:
                                iceUnwritableTimeMs = Integer.parseInt(str6);
                                break;
                            case 6:
                                iceUnwritableMinChecks = Integer.parseInt(str6);
                                break;
                            case 7:
                                int i11 = Build.VERSION.SDK_INT;
                                if (i11 > 22) {
                                    Logging.d(TAG, "OS version is : " + i11 + ", sharedContext will be set: " + useSharedContext);
                                } else {
                                    useSharedContext = matchCPU(str6);
                                }
                                break;
                            case 8:
                                int i12 = Build.VERSION.SDK_INT;
                                if (i12 <= 22) {
                                    Logging.d(TAG, "OS version is : " + i12 + ", sharedContext will be set: " + useSharedContext);
                                } else {
                                    useSharedContext = matchCPU(str6);
                                }
                                break;
                            case 9:
                                useSoftwareDecoder = matchModel(true, str6, useSoftwareDecoder, false);
                                Logging.d(TAG, "Filter Model for useSoftwareDecoder model: " + useSoftwareDecoder);
                                break;
                            case 10:
                                if (Integer.valueOf(str6).intValue() <= 0) {
                                    z10 = false;
                                }
                                useTextureCloningFlag = z10;
                                Logging.d(TAG, "useTextureCloningFlag: " + useTextureCloningFlag);
                                break;
                            case 11:
                                rtc_frame_buffer_size_limit = Integer.parseInt(str6);
                                break;
                            case 12:
                                if (Integer.parseInt(str6) <= 0) {
                                    z10 = false;
                                }
                                rtc_frame_info_match_by_pts = z10;
                                break;
                            case 13:
                                HmDataChannelDeviceSwitch.getInstance().setEnablePara(str6);
                                break;
                            case 14:
                                HmDataChannelDeviceSwitch.getInstance().setPort7681DataChannelPolicy(DataChannelPolicy.parsePolicy(str6));
                                break;
                            case 15:
                                HmDataChannelDeviceSwitch.getInstance().setPort7682DataChannelPolicy(DataChannelPolicy.parsePolicy(str6));
                                break;
                            case 16:
                                rtcOpenFlexFEC = Integer.parseInt(str6);
                                break;
                            case 17:
                                rtcOpenFEC = Integer.parseInt(str6);
                                break;
                            case 18:
                                rtcMaxFecPackets = Integer.parseInt(str6);
                                break;
                            case 19:
                                rtcMaxMediaPackets = Integer.parseInt(str6);
                                break;
                            case 20:
                                rtcNackReportDelayTime = Integer.parseInt(str6);
                                break;
                            case 21:
                                rtcRtcpIntervalTime = Integer.parseInt(str6);
                                break;
                            case 22:
                                rtcMaxWaitForFrameMs = Integer.parseInt(str6);
                                break;
                            case 23:
                                rtcHwDecoderBufferMode = Integer.parseInt(str6);
                                break;
                            case 24:
                                String[] strArrSplit = str6.split("-");
                                if (strArrSplit != null && strArrSplit.length == 3) {
                                    hmNackBufferLimit = Integer.parseInt(strArrSplit[0]);
                                    hmNackBufferSalt = Integer.parseInt(strArrSplit[1]);
                                    hmNackBufferForceLimit = Integer.parseInt(strArrSplit[2]);
                                }
                                break;
                            case 25:
                                hmBadFrameDetectConfigParams = str6;
                                Logging.d(TAG, "RTC_HM_BAD_FRAME_DETECT_CONFIG: " + hmBadFrameDetectConfigParams);
                                break;
                            case 26:
                                Logging.d(TAG, "rtcImageAdjustable:" + str6);
                                rtcImageAdjustable = "1".equals(str6);
                                break;
                            case 27:
                                Logging.d(TAG, "RTC_IMAGE_BRIGHTNESS_RATIO:" + str6);
                                rtcBrightnessRatio = Float.parseFloat(str6);
                                break;
                            case 28:
                                Logging.d(TAG, "RTC_IMAGE_CONTRAST_RATIO:" + str6);
                                rtcContrastRatio = Float.parseFloat(str6);
                                break;
                            case 29:
                                Logging.d(TAG, "RTC_IMAGE_SATURATION_RATIO:" + str6);
                                rtcSaturationRatio = Float.parseFloat(str6);
                                break;
                            case 30:
                                rtcUseDirectSurfaceView = matchModel(true, str6, rtcUseDirectSurfaceView, false);
                                Logging.d(TAG, " to or not to use SurfaceView directly to render MediaCodec's decoded data:" + rtcUseDirectSurfaceView);
                                break;
                            case 31:
                                rtcEnableMediaCodecOutputDropping = matchModel(true, str6, rtcEnableMediaCodecOutputDropping, false);
                                Logging.d(TAG, " to or not to enable mediaCodec output dropping:" + rtcEnableMediaCodecOutputDropping);
                                break;
                            case 32:
                                rtc_signalv2_signalv1delaytime = Integer.parseInt(str6);
                                Logging.d(TAG, "signalv2 timeout:" + rtc_signalv2_signalv1delaytime);
                                break;
                            case 33:
                                if (Integer.valueOf(str6).intValue() <= 0) {
                                    z10 = false;
                                }
                                rtcEnableFrameInterpolation = z10;
                                Logging.d(TAG, "RTC_ENABLE_FRAME_INTERPOLATION:" + rtcEnableFrameInterpolation);
                                break;
                            case 34:
                                rtcFirstFrameInterpolationInterval = Integer.parseInt(str6);
                                Logging.d(TAG, "RTC_FIRST_FRAME_INTERPOLATION_INTERVAL:" + rtcFirstFrameInterpolationInterval);
                                break;
                            case 35:
                                rtcFollowingFrameInterpolationInterval = Integer.parseInt(str6);
                                Logging.d(TAG, "RTC_FOLLOWING_FRAME_INTERPOLATION_INTERVAL:" + rtcFollowingFrameInterpolationInterval);
                                break;
                            case 36:
                                rtcFrameInterpolationTopLimit = Integer.parseInt(str6);
                                Logging.d(TAG, "RTC_FRAME_INTERPOLATION_TOP_LIMIT:" + rtcFrameInterpolationTopLimit);
                                break;
                            case 37:
                                if (Integer.valueOf(str6).intValue() <= 0) {
                                    z10 = false;
                                }
                                isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException = z10;
                                Logging.d(TAG, "RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION:" + isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException);
                                break;
                            case 38:
                            case 39:
                                break;
                            case 40:
                                if (Integer.parseInt(str6) <= 0) {
                                    z10 = false;
                                }
                                rtc_download_audio_on = z10;
                                Logging.d(TAG, "RTC_DOWNLOAD_AUDIO_ON:" + rtc_download_audio_on);
                                break;
                            case 41:
                                if (Integer.parseInt(str6) <= 0) {
                                    z10 = false;
                                }
                                rtc_download_video_on = z10;
                                Logging.d(TAG, "RTC_DOWNLOAD_VIDEO_ON:" + rtc_download_video_on);
                                break;
                            case 42:
                                if (Integer.parseInt(str6) <= 0) {
                                    z10 = false;
                                }
                                updateNeworksContinuableOn = z10;
                                Logging.d(TAG, str5 + ": " + updateNeworksContinuableOn);
                                break;
                            case 43:
                                int i13 = Integer.parseInt(str6);
                                if (i13 == 0 || i13 == 1 || i13 == 2) {
                                    playout_delay_mode = i13;
                                    Logging.d(TAG, "PLAYOUT_DELAY_MODE: " + playout_delay_mode);
                                }
                                break;
                            case 44:
                                int i14 = Integer.parseInt(str6);
                                if (i14 > 0) {
                                    forced_playout_delay_min = i14;
                                    Logging.d(TAG, "FORCED_PLAYOUT_DELAY_MIN: " + forced_playout_delay_min);
                                }
                                break;
                            case 45:
                                int i15 = Integer.parseInt(str6);
                                if (i15 > 0) {
                                    forced_playout_delay_max = i15;
                                    Logging.d(TAG, "FORCED_PLAYOUT_DELAY_MAX: " + forced_playout_delay_max);
                                }
                                break;
                            case 46:
                                int i16 = Integer.parseInt(str6);
                                if (i16 > 0) {
                                    max_allowed_framebuffer_size_in_normal = i16;
                                    Logging.d(TAG, str5 + ": " + max_allowed_framebuffer_size_in_normal);
                                }
                                break;
                            case 47:
                                if (Integer.valueOf(str6).intValue() <= 0) {
                                    z10 = false;
                                }
                                rtcEnableSignalv1DnsResolveOptimize = z10;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("RTC_ENABLE_SIGNALV1_DNSRESOLVE_OPTIMIZE:");
                                sb2.append(rtcEnableSignalv1DnsResolveOptimize ? "true" : "false");
                                Logging.d(TAG, sb2.toString());
                                break;
                            case 48:
                                if (Integer.valueOf(str6).intValue() <= 0) {
                                    z10 = false;
                                }
                                rtcEnableSrtpCipherReport = z10;
                                Logging.d(TAG, "RTC_ENABLE_SRTP_CIPHER_REPORT:" + rtcEnableSrtpCipherReport);
                                break;
                            case 49:
                                if (Integer.valueOf(str6).intValue() <= 0) {
                                    z10 = false;
                                }
                                rtcEnableNetworkAccelerate = z10;
                                Logging.d(TAG, "RTC_ENABLE_NETWORK_ACCELERATE:" + rtcEnableNetworkAccelerate);
                                break;
                            case 50:
                                if (Integer.valueOf(str6).intValue() <= 0) {
                                    z10 = false;
                                }
                                rtcEnableSwitchCellularNetwork = z10;
                                Logging.d(TAG, "RTC_ENABLE_SWITCH_CELLULAR_NETWORK:" + rtcEnableSwitchCellularNetwork);
                                break;
                            default:
                                Logging.e(TAG, "Unknown config: " + str5);
                                break;
                        }
                    } catch (Exception e10) {
                        Logging.e(TAG, e10.toString());
                    }
                }
                i10++;
            } else {
                for (String str7 : configKeys) {
                    String str8 = map.get(str7);
                    if (!TextUtils.isEmpty(str8)) {
                        try {
                            int iHashCode = str7.hashCode();
                            if (iHashCode != -1928241264) {
                                if (iHashCode != -498014408) {
                                    if (iHashCode != 1446070436) {
                                        b10 = -1;
                                    } else {
                                        try {
                                            if (str7.equals(USE_SHARED_CONTEXT_VIA_MODEL)) {
                                                b10 = 0;
                                            } else {
                                                b10 = -1;
                                            }
                                        } catch (Exception e11) {
                                            exc = e11;
                                            Logging.e(TAG, exc.toString());
                                        }
                                    }
                                } else if (str7.equals(RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL)) {
                                    b10 = 2;
                                } else {
                                    b10 = -1;
                                }
                            } else if (str7.equals(NOT_USE_SHARED_CONTEXT_VIA_MODEL)) {
                                b10 = 1;
                            } else {
                                b10 = -1;
                            }
                            if (b10 == 0) {
                                useSharedContext = matchModel(true, str8, useSharedContext, false);
                            } else if (b10 == 1) {
                                useSharedContext = matchModel(false, str8, useSharedContext, false);
                            } else if (b10 == 2) {
                                try {
                                    isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException = matchModel(true, str8, isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException, false);
                                    Logging.d(TAG, "RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL:" + isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException);
                                } catch (Exception e12) {
                                    e = e12;
                                    exc = e;
                                    Logging.e(TAG, exc.toString());
                                }
                            }
                        } catch (Exception e13) {
                            e = e13;
                        }
                    }
                }
                for (String str9 : configKeys) {
                    String str10 = map.get(str9);
                    if (!TextUtils.isEmpty(str10)) {
                        try {
                            switch (str9) {
                                case "rtc_use_shared_context_via_model_exact":
                                    useSharedContext = matchModel(true, str10, useSharedContext, true);
                                    break;
                                case "rtc_not_use_shared_context_via_model_exact":
                                    useSharedContext = matchModel(false, str10, useSharedContext, true);
                                    break;
                                case "rtc_use_software_decoder_via_model_exact":
                                    useSoftwareDecoder = matchModel(true, str10, useSoftwareDecoder, true);
                                    Logging.d(TAG, "Filter Model for useSoftwareDecoder exact model: " + useSoftwareDecoder);
                                    break;
                                case "rtc_close_decoder_low_latency":
                                    isCloseDecoderLowLatency = matchModel(true, str10, isCloseDecoderLowLatency, true);
                                    Logging.d(TAG, "Filter Model for isCloseDecoderLowLatency exact model: " + isCloseDecoderLowLatency);
                                    break;
                                case "rtc_use_direct_surface_view_exact":
                                    rtcUseDirectSurfaceView = matchModel(true, str10, rtcUseDirectSurfaceView, true);
                                    Logging.d(TAG, " to or not to use SurfaceView directly to render MediaCodec's decoded data:" + rtcUseDirectSurfaceView);
                                    break;
                                case "rtc_enable_media_codec_output_dropping_exact":
                                    rtcEnableMediaCodecOutputDropping = matchModel(true, str10, rtcEnableMediaCodecOutputDropping, true);
                                    Logging.d(TAG, " to or not to enable mediaCodec output dropping:" + rtcEnableMediaCodecOutputDropping);
                                    break;
                                case "rtc_not_retry_or_ignore_decoder_configure_illegalstateexception_model_exact":
                                    isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException = matchModel(true, str10, isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException, true);
                                    Logging.d(TAG, "RTC_NOT_RETRY_OR_IGNORE_DECODER_CONFIGURE_ILLEGALSTATEEXCEPTION_MODEL_EXACT:" + isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException);
                                    break;
                            }
                        } catch (Exception e14) {
                            Logging.e(TAG, e14.toString());
                            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CLOUD_CONFIG_ERROR, "HmRtcGlobalConfig:parseRtcConfig Exception:" + e14.toString());
                        }
                    }
                }
                String str11 = map.get(FORCE_VP8_FORMAT);
                if (!TextUtils.isEmpty(str11)) {
                    boolean zMatchModel = matchModel(true, str11, false, true);
                    forceVP8Format = zMatchModel;
                    if (zMatchModel) {
                        Logging.d(TAG, "Force vp8 format matched, reset useShareContext is true ");
                        useSharedContext = true;
                    }
                }
                String str12 = map.get(FORCE_H264_FORMAT);
                if (!TextUtils.isEmpty(str12)) {
                    forceH264Format = matchModel(true, str12, false, true);
                }
                String str13 = map.get(RTC_ENABLE_TURN_PROTOCOL);
                if (!TextUtils.isEmpty(str13)) {
                    HmRtcSdkTurnCfg hmRtcSdkTurnCfg = new HmRtcSdkTurnCfg(str13);
                    rtcEnableTurnProtocol = hmRtcSdkTurnCfg.isEnable();
                    rtcTurnAuthInfo = hmRtcSdkTurnCfg.getAuthInfo();
                    Logging.d(TAG, " RTC_ENABLE_TURN_PROTOCOL enable:" + rtcEnableTurnProtocol + ",authInfo:" + rtcTurnAuthInfo);
                }
                String str14 = map.get(RTC_UDP_PORT_CONFIG);
                if (!TextUtils.isEmpty(str14)) {
                    rtcUdpPortCfg = new HmRtcUdpPortCfg(str14);
                }
                Logging.d(TAG, "RTC_UDP_PORT_CONFIG :" + rtcUdpPortCfg.ToString());
                String str15 = map.get(RTC_STUNREQ_RESEND_CONFIG);
                if (!TextUtils.isEmpty(str15)) {
                    rtcStunReqResendCfg = new HmRtcStunRequestResendCfg(str15);
                }
                Logging.d(TAG, "RTC_STUNREQ_RESEND_CONFIG :" + rtcStunReqResendCfg.ToString());
                parseCloudRtcFieldTrials(map);
                parseHmNewRtcConfig();
                MediaCodecSupportedCodecs.startGettingSupportedCodecs(forceH264Format, forceVP8Format, openH265(), rtcEnableCacheDecoders, cacheDecodersTimeout, useSoftwareDecoder);
                return;
            }
        }
    }

    static class HmRtcCanaryConfig {
        public final String configName;
        public final boolean opened;
        public final String roomID;

        public HmRtcCanaryConfig(String str, String str2, int i10, boolean z10) throws Exception {
            this.roomID = str;
            this.configName = str2;
            if (TextUtils.isEmpty(str2)) {
                Logging.e(HmRtcGlobalConfig.TAG, "Fatal error: configName is null ");
                throw new Exception("Fatal error: got a null config name, pls check SAAS mango db.");
            }
            if (TextUtils.isEmpty(str)) {
                Logging.e(HmRtcGlobalConfig.TAG, "Fatal error: " + str2 + "'s room id is null, default is: " + z10);
                this.opened = z10;
                return;
            }
            if (i10 <= 0) {
                Logging.i(HmRtcGlobalConfig.TAG, str2 + " was " + z10);
                this.opened = z10;
                return;
            }
            int iNextInt = new Random(System.currentTimeMillis()).nextInt(100);
            boolean z11 = iNextInt <= i10;
            this.opened = z11;
            Logging.i(HmRtcGlobalConfig.TAG, "roomID: " + str + ", " + str2 + " is " + z11 + ", percent: " + i10 + ", random: " + iNextInt);
        }

        public HmRtcCanaryConfig(String str, boolean z10) throws Exception {
            this.configName = str;
            this.roomID = "";
            if (!TextUtils.isEmpty(str)) {
                this.opened = z10;
                Logging.i(HmRtcGlobalConfig.TAG, str + " is " + z10);
                return;
            }
            Logging.e(HmRtcGlobalConfig.TAG, "Fatal error: configName is null ");
            throw new Exception("Fatal error: got a null config name, pls check SAAS mango db.");
        }

        public HmRtcCanaryConfig(String str, int i10, boolean z10) throws Exception {
            this.configName = str;
            this.roomID = "";
            if (TextUtils.isEmpty(str)) {
                Logging.e(HmRtcGlobalConfig.TAG, "Fatal error: configName is null ");
                throw new Exception("Fatal error: got a null config name, pls check SAAS mango db.");
            }
            if (i10 <= 0) {
                Logging.i(HmRtcGlobalConfig.TAG, str + " was " + z10);
                this.opened = z10;
                return;
            }
            int iNextInt = new Random(System.currentTimeMillis()).nextInt(100);
            boolean z11 = iNextInt <= i10;
            this.opened = z11;
            Logging.i(HmRtcGlobalConfig.TAG, str + " is " + z11 + ", percent: " + i10 + ", random: " + iNextInt);
        }
    }

    public static void parseHmNewRtcConfig() {
        Map<String, String> map = mNewRTCloudConfigWithNoCid;
        if (map != null && !map.isEmpty()) {
            for (String str : newConfigKeysWithNoCid) {
                String str2 = mNewRTCloudConfigWithNoCid.get(str);
                if (!TextUtils.isEmpty(str2)) {
                    Logging.d(TAG, "parseHmNewRtcConfig: key :" + str + ",value:" + str2);
                    str.hashCode();
                    if (str.equals(FORCE_H264_FORMAT_V2)) {
                        HmRtcSdkCloudCfg hmRtcSdkCloudCfg = new HmRtcSdkCloudCfg(str, str2, "");
                        Logging.d(TAG, "parseHmNewRtcConfig:" + str + " enable:" + hmRtcSdkCloudCfg.isEnable());
                        forceH264Format = hmRtcSdkCloudCfg.isEnable();
                    } else if (str.equals(RTC_ENABLE_CACHE_DECODERS)) {
                        HmCacheDecodersConfig hmCacheDecodersConfig = new HmCacheDecodersConfig(str, str2);
                        Logging.d(TAG, "parseHmNewRtcConfig:" + str + " enable:" + hmCacheDecodersConfig.isEnable());
                        rtcEnableCacheDecoders = hmCacheDecodersConfig.isEnable();
                        cacheDecodersTimeout = hmCacheDecodersConfig.getTimeout();
                    }
                }
            }
            mNewRTCloudConfigWithNoCid.clear();
            mNewRTCloudConfigWithNoCid = null;
            return;
        }
        Logging.w(TAG, "parseHmNewRtcConfig: newConfigMaps is null or empty");
    }
}
