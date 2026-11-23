package com.google.zxing.oned;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.haima.hmcp.proto.GSSDK;
import com.haima.hmcp.utils.ButtonMappingUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class EANManufacturerOrgSupport {
    private final List<int[]> ranges = new ArrayList();
    private final List<String> countryIdentifiers = new ArrayList();

    EANManufacturerOrgSupport() {
    }

    private void add(int[] iArr, String str) {
        this.ranges.add(iArr);
        this.countryIdentifiers.add(str);
    }

    private synchronized void initIfNeeded() {
        if (this.ranges.isEmpty()) {
            add(new int[]{0, 19}, "US/CA");
            add(new int[]{30, 39}, "US");
            add(new int[]{60, 139}, "US/CA");
            add(new int[]{300, MediaPlayer.MEDIA_PLAYER_OPTION_QUEUE_MAX_FULL}, "FR");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER}, "BG");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_400}, "SI");
            add(new int[]{385}, "HR");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500}, "BA");
            add(new int[]{400, 440}, "DE");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_FIRST_VIDEO_SEND_OUTLET_TIME}, "JP");
            add(new int[]{460, 469}, "RU");
            add(new int[]{471}, "TW");
            add(new int[]{474}, "EE");
            add(new int[]{475}, "LV");
            add(new int[]{476}, "AZ");
            add(new int[]{477}, "LT");
            add(new int[]{478}, "UZ");
            add(new int[]{479}, "LK");
            add(new int[]{480}, "PH");
            add(new int[]{481}, "BY");
            add(new int[]{482}, "UA");
            add(new int[]{484}, "MD");
            add(new int[]{485}, "AM");
            add(new int[]{486}, "GE");
            add(new int[]{487}, "KZ");
            add(new int[]{489}, "HK");
            add(new int[]{490, 499}, "JP");
            add(new int[]{500, 509}, "GB");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX}, "GR");
            add(new int[]{528}, ExpandedProductParsedResult.POUND);
            add(new int[]{529}, "CY");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_FORMATER_AUDIO_QUEUE_SIZE}, "MK");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_METHOD}, "MT");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_DUMMY_VOICE_SLEEP}, "IE");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HW_ERR_REASON, 549}, "BE/LU");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUX_NONBLOCK_READ}, "PT");
            add(new int[]{569}, "IS");
            add(new int[]{570, 579}, "DK");
            add(new int[]{590}, "PL");
            add(new int[]{594}, "RO");
            add(new int[]{599}, "HU");
            add(new int[]{600, 601}, "ZA");
            add(new int[]{603}, "GH");
            add(new int[]{608}, "BH");
            add(new int[]{609}, "MU");
            add(new int[]{611}, "MA");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BARRAGE_MASK}, "DZ");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_AVG_VIDEO_BUFFER_LENGTH}, "KE");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB}, "CI");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID}, "TN");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_BEGIN_TIME}, "SY");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_DNS_START_TIME}, "EG");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_AVFORMAT_OPEN_TIME}, "LY");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME}, "JO");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_DEC_CREATE_TIME}, "IR");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_OUTLET_CREATE_TIME}, "KW");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME}, "SA");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME}, "AE");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NOTIFY_SEI_IMMEDIATELY_BEFORE_FIRSTFRAME}, "FI");
            add(new int[]{690, 695}, "CN");
            add(new int[]{700, 709}, "NO");
            add(new int[]{729}, "IL");
            add(new int[]{730, 739}, "SE");
            add(new int[]{740}, "GT");
            add(new int[]{741}, "SV");
            add(new int[]{742}, "HN");
            add(new int[]{743}, "NI");
            add(new int[]{744}, "CR");
            add(new int[]{745}, "PA");
            add(new int[]{746}, "DO");
            add(new int[]{750}, "MX");
            add(new int[]{754, 755}, "CA");
            add(new int[]{759}, "VE");
            add(new int[]{760, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_B_VALUE}, "CH");
            add(new int[]{GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_C_VALUE}, "CO");
            add(new int[]{GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_R1_VALUE}, "UY");
            add(new int[]{GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_R2_VALUE}, "PE");
            add(new int[]{GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_START_VALUE}, "BO");
            add(new int[]{GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RA_VALUE}, "AR");
            add(new int[]{GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_MODE_VALUE}, "CL");
            add(new int[]{GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_X_VALUE}, "PY");
            add(new int[]{GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Y_VALUE}, "PE");
            add(new int[]{GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_VALUE}, "EC");
            add(new int[]{789, 790}, "BR");
            add(new int[]{800, 839}, "IT");
            add(new int[]{840, 849}, "ES");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME}, "CU");
            add(new int[]{858}, "SK");
            add(new int[]{859}, "CZ");
            add(new int[]{860}, "YU");
            add(new int[]{865}, "MN");
            add(new int[]{867}, "KP");
            add(new int[]{868, TTAdConstant.VALUE_CLICK_AREA_OTHER}, "TR");
            add(new int[]{870, 879}, "NL");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_RTC_HARDWARE_DECODE}, "KR");
            add(new int[]{885}, "TH");
            add(new int[]{ButtonMappingUtil.KEYBOARD_DIRECTION}, "SG");
            add(new int[]{890}, "IN");
            add(new int[]{893}, "VN");
            add(new int[]{896}, "PK");
            add(new int[]{899}, "ID");
            add(new int[]{900, 919}, "AT");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_COST, 939}, "AU");
            add(new int[]{MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_PARAMS, 949}, "AZ");
            add(new int[]{955}, "MY");
            add(new int[]{958}, "MO");
        }
    }

    String lookupCountryIdentifier(String str) {
        int[] iArr;
        int i10;
        initIfNeeded();
        int i11 = Integer.parseInt(str.substring(0, 3));
        int size = this.ranges.size();
        for (int i12 = 0; i12 < size && i11 >= (i10 = (iArr = this.ranges.get(i12))[0]); i12++) {
            if (iArr.length != 1) {
                i10 = iArr[1];
            }
            if (i11 <= i10) {
                return this.countryIdentifiers.get(i12);
            }
        }
        return null;
    }
}
