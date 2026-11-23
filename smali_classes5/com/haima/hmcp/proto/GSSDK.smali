.class public final Lcom/haima/hmcp/proto/GSSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/proto/GSSDK$GameState;,
        Lcom/haima/hmcp/proto/GSSDK$GameStateOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$MICStatus;,
        Lcom/haima/hmcp/proto/GSSDK$MICStatusOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$XInputMSG;,
        Lcom/haima/hmcp/proto/GSSDK$XInputMSGOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$ShellCommands_R;,
        Lcom/haima/hmcp/proto/GSSDK$ShellCommands_ROrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$ShellCommands;,
        Lcom/haima/hmcp/proto/GSSDK$ShellCommandsOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$FileDownload_R;,
        Lcom/haima/hmcp/proto/GSSDK$FileDownload_ROrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$FileDownload;,
        Lcom/haima/hmcp/proto/GSSDK$FileDownloadOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;,
        Lcom/haima/hmcp/proto/GSSDK$FileUpload_ROrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$FileUpload;,
        Lcom/haima/hmcp/proto/GSSDK$FileUploadOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$ClipBoardData;,
        Lcom/haima/hmcp/proto/GSSDK$ClipBoardDataOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$RestNoInputTimer_R;,
        Lcom/haima/hmcp/proto/GSSDK$RestNoInputTimer_ROrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$ResetNoInputTimer;,
        Lcom/haima/hmcp/proto/GSSDK$ResetNoInputTimerOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GameSDKData;,
        Lcom/haima/hmcp/proto/GSSDK$GameSDKDataOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GameSDKAction;,
        Lcom/haima/hmcp/proto/GSSDK$GameSDKActionOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$InputOPData;,
        Lcom/haima/hmcp/proto/GSSDK$InputOPDataOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;,
        Lcom/haima/hmcp/proto/GSSDK$OneInputOPDataOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;,
        Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GameAudioData;,
        Lcom/haima/hmcp/proto/GSSDK$GameAudioDataOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GameCursor;,
        Lcom/haima/hmcp/proto/GSSDK$GameCursorOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$InputMethodChData;,
        Lcom/haima/hmcp/proto/GSSDK$InputMethodChDataOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotify;,
        Lcom/haima/hmcp/proto/GSSDK$IMEStatusNotifyOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GamepadState;,
        Lcom/haima/hmcp/proto/GSSDK$GamepadStateOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GamepadMouse;,
        Lcom/haima/hmcp/proto/GSSDK$GamepadMouseOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$IMEStatus;,
        Lcom/haima/hmcp/proto/GSSDK$IMEStatusOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GSNotification;,
        Lcom/haima/hmcp/proto/GSSDK$GSNotificationOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$GSStateNotice;,
        Lcom/haima/hmcp/proto/GSSDK$GSStateNoticeOrBuilder;,
        Lcom/haima/hmcp/proto/GSSDK$StatusType;,
        Lcom/haima/hmcp/proto/GSSDK$IMEType;,
        Lcom/haima/hmcp/proto/GSSDK$ClientType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_haima_hmcp_proto_ClipBoardData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_ClipBoardData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_CoordinatePos_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_CoordinatePos_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_FileDownload_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_FileDownload_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_FileDownload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_FileDownload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_FileUpload_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_FileUpload_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_FileUpload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_FileUpload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GSNotification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GSNotification_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GSStateNotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GSStateNotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GameAudioData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GameAudioData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GameCursor_CursorFrame_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GameCursor_CursorFrame_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GameCursor_GameCursorFrameData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GameCursor_GameCursorFrameData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GameCursor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GameCursor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GameSDKAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GameSDKAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GameSDKData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GameSDKData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GameState_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GameState_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GamepadMouse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GamepadMouse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_GamepadState_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_GamepadState_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_IMEStatusNotify_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_IMEStatusNotify_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_IMEStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_IMEStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_InputMethodChData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_InputMethodChData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_InputOPData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_InputOPData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_MICStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_MICStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_OneInputOPData_PointerProperties_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_OneInputOPData_PointerProperties_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_OneInputOPData_TouchEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_OneInputOPData_TouchEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_OneInputOPData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_OneInputOPData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_ResetNoInputTimer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_ResetNoInputTimer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_RestNoInputTimer_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_RestNoInputTimer_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_ShellCommands_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_ShellCommands_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_ShellCommands_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_ShellCommands_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_com_haima_hmcp_proto_XInputMSG_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_com_haima_hmcp_proto_XInputMSG_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    const-string v0, "\n\u000cGS_SDK.proto\u0012\u0014com.haima.hmcp.proto\"\u0088\u0002\n\rGSStateNotice\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007extInfo\u0018\u0003 \u0001(\t\"\u00c8\u0001\n\u000bGSStateType\u0012\u0011\n\rCAPITAL_STATE\u0010\u0001\u0012\u0012\n\u000eKEYBOARD_STYLE\u0010\u0002\u0012\u0018\n\u0014CUT_VIRTUAL_GAME_PAD\u0010\u0003\u0012\u001b\n\u0017LINKED_VIRTUAL_GAME_PAD\u0010\u0004\u0012\u0015\n\u0011MAIN_CONTEXT_QUIT\u0010\u0005\u0012\u0013\n\u000fGAME_WND_RESIZE\u0010\u0006\u0012\u000e\n\nGAME_START\u0010\u0007\u0012\r\n\tGAME_STOP\u0010\u0008\u0012\u0010\n\u000cGAMEPAD_MODE\u0010\t\"\u00ac\u0002\n\u000eGSNotification\u0012>\n\u0004type\u0018\u0001 \u0001(\u000e20.com.haima.hmcp.proto.GSNotification.GSNotifType\u0012\u000b\n\u0003cid\u0018\u0002 \u0001(\u0003\u0012\u000f\n\u0007extInfo\u0018\u0003 \u0001(\t\u0012\r\n\u0005value\u0018\u0004 \u0001(\u0005\u0012\u0011\n\tquit_type\u0018\u0005 \u0001(\u0005\"h\n\u000bGSNotifType\u0012\r\n\tGAME_QUIT\u0010\u0001\u0012\u0014\n\u0010NO_INPUT_TIMEOUT\u0010\u0002\u0012\u000f\n\u000bGET_CONTROL\u0010\u0003\u0012\u0010\n\u000cLOST_CONTROL\u0010\u0004\u0012\u0011\n\rCAPITAL_STATE\u0010\u0005\"0\n\u000cGameQuitType\u0012\u0010\n\u000cPROCESS_EXIT\u0010\u0001\u0012\u000e\n\nOWNER_EXIT\u0010\u0002\"s\n\tIMEStatus\u00125\n\u000bstatus_type\u0018\u0001 \u0001(\u000e2 .com.haima.hmcp.proto.StatusType\u0012/\n\u0008ime_type\u0018\u0002 \u0001(\u000e2\u001d.com.haima.hmcp.proto.IMEType\"#\n\u000cGamepadMouse\u0012\u0013\n\u000bmode_switch\u0018\u0001 \u0001(\u0008\"\u008b\u0001\n\u000cGamepadState\u0012\r\n\u0005index\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006vendor\u0018\u0002 \u0001(\t\u00127\n\u0005state\u0018\u0003 \u0001(\u000e2(.com.haima.hmcp.proto.GamepadState.State\"#\n\u0005State\u0012\r\n\tUNPLUGGED\u0010\u0000\u0012\u000b\n\u0007PLUGGED\u0010\u0001\"\u00bc\u0001\n\u000fIMEStatusNotify\u00127\n\rterminal_type\u0018\u0001 \u0001(\u000e2 .com.haima.hmcp.proto.ClientType\u00125\n\u000bstatus_type\u0018\u0002 \u0001(\u000e2 .com.haima.hmcp.proto.StatusType\u00129\n\rgamepad_state\u0018\u0003 \u0001(\u000b2\".com.haima.hmcp.proto.GamepadState\"&\n\u0011InputMethodChData\u0012\u0011\n\tinput_buf\u0018\u0001 \u0001(\u000c\"\u00f8\u0007\n\nGameCursor\u0012\u0014\n\u000cshow_or_hide\u0018\u0001 \u0001(\u0008\u00127\n\ncursor_pos\u0018\u0002 \u0001(\u000b2#.com.haima.hmcp.proto.CoordinatePos\u0012 \n\u0018game_cursor_sync_seq_num\u0018\u0004 \u0001(\r\u0012B\n\u000ccursor_style\u0018\u0005 \u0001(\u000e2,.com.haima.hmcp.proto.GameCursor.CursorStyle\u0012N\n\u0010game_cursor_data\u0018\u0006 \u0001(\u000b24.com.haima.hmcp.proto.GameCursor.GameCursorFrameData\u0012A\n\u0014icon_cursor_hot_spot\u0018\u0007 \u0001(\u000b2#.com.haima.hmcp.proto.CoordinatePos\u0012\u0014\n\u000ccursor_width\u0018\u0008 \u0001(\r\u0012\u0015\n\rcursor_height\u0018\t \u0001(\r\u001as\n\u000bCursorFrame\u0012\u0012\n\nstep_frame\u0018\u0001 \u0001(\r\u0012<\n\u000fcursor_hot_spot\u0018\u0002 \u0001(\u000b2#.com.haima.hmcp.proto.CoordinatePos\u0012\u0012\n\nframe_data\u0018\u0003 \u0001(\u000c\u001an\n\u0013GameCursorFrameData\u0012\u0012\n\nframe_rate\u0018\u0001 \u0001(\r\u0012C\n\rcursor_frames\u0018\u0002 \u0003(\u000b2,.com.haima.hmcp.proto.GameCursor.CursorFrame\"\u008f\u0003\n\u000bCursorStyle\u0012\u0012\n\u000eCURSOR_DEFAULT\u0010\u0000\u0012\u0011\n\rCURSOR_CUSTOM\u0010\u0001\u0012\u000f\n\u000bCURSOR_NONE\u0010\u0002\u0012\u0018\n\u0012CURSOR_APPSTARTING\u0010\u008a\u00ff\u0001\u0012\u0012\n\u000cCURSOR_ARROW\u0010\u0080\u00fe\u0001\u0012\u0012\n\u000cCURSOR_CROSS\u0010\u0083\u00fe\u0001\u0012\u0011\n\u000bCURSOR_HAND\u0010\u0089\u00ff\u0001\u0012\u0011\n\u000bCURSOR_HELP\u0010\u008b\u00ff\u0001\u0012\u0012\n\u000cCURSOR_IBEAM\u0010\u0081\u00fe\u0001\u0012\u0011\n\u000bCURSOR_ICON\u0010\u0081\u00ff\u0001\u0012\u000f\n\tCURSOR_NO\u0010\u0088\u00ff\u0001\u0012\u0011\n\u000bCURSOR_SIZE\u0010\u0080\u00ff\u0001\u0012\u0014\n\u000eCURSOR_SIZEALL\u0010\u0086\u00ff\u0001\u0012\u0015\n\u000fCURSOR_SIZENESW\u0010\u0083\u00ff\u0001\u0012\u0013\n\rCURSOR_SIZENS\u0010\u0085\u00ff\u0001\u0012\u0015\n\u000fCURSOR_SIZENWSE\u0010\u0082\u00ff\u0001\u0012\u0013\n\rCURSOR_SIZEWE\u0010\u0084\u00ff\u0001\u0012\u0014\n\u000eCURSOR_UPARROW\u0010\u0084\u00fe\u0001\u0012\u0011\n\u000bCURSOR_WAIT\u0010\u0082\u00fe\u0001\"#\n\rGameAudioData\u0012\u0012\n\naudio_data\u0018\u0001 \u0003(\u000c\"%\n\rCoordinatePos\u0012\t\n\u0001x\u0018\u0001 \u0001(\u0005\u0012\t\n\u0001y\u0018\u0002 \u0001(\u0005\"\u00ad0\n\u000eOneInputOPData\u0012>\n\u0008input_op\u0018\u0001 \u0001(\u000e2,.com.haima.hmcp.proto.OneInputOPData.InputOP\u0012D\n\u000binput_state\u0018\u0002 \u0001(\u000e2/.com.haima.hmcp.proto.OneInputOPData.InputState\u0012\r\n\u0005value\u0018\u0003 \u0001(\u0005\u00127\n\npos_cursor\u0018\u0004 \u0001(\u000b2#.com.haima.hmcp.proto.CoordinatePos\u00126\n\tpos_mouse\u0018\u0005 \u0001(\u000b2#.com.haima.hmcp.proto.CoordinatePos\u0012\u0011\n\top_device\u0018\u0006 \u0001(\u0005\u0012\u0019\n\u0011xinput_user_index\u0018\u0007 \u0001(\u0005\u0012 \n\u0018game_cursor_sync_seq_num\u0018\u0008 \u0001(\r\u0012D\n\u000btouch_event\u0018\t \u0001(\u000b2/.com.haima.hmcp.proto.OneInputOPData.TouchEvent\u0012C\n\u0008pos_mode\u0018\n \u0001(\u000e21.com.haima.hmcp.proto.OneInputOPData.PositionMode\u0012\u0015\n\rserial_number\u0018\u000b \u0001(\u0005\u0012\u0011\n\ttimestamp\u0018\u000c \u0001(\u0003\u0012\r\n\u0005wheel\u0018\r \u0001(\u0005\u0012\u000f\n\u0007wheel_h\u0018\u000e \u0001(\u0005\u0012\u000e\n\u0006vendor\u0018\u000f \u0001(\t\u001a\u00fc\u0002\n\u0011PointerProperties\u0012\n\n\u0002id\u0018\u0001 \u0001(\u0005\u0012P\n\u0004type\u0018\u0002 \u0001(\u000e2B.com.haima.hmcp.proto.OneInputOPData.PointerProperties.TouchDevice\u0012\u0010\n\u0008pressure\u0018\u0003 \u0001(\u0002\u0012\u000c\n\u0004size\u0018\u0004 \u0001(\u0002\u0012\u0013\n\u000btouch_major\u0018\u0005 \u0001(\u0002\u0012\u0013\n\u000btouch_minor\u0018\u0006 \u0001(\u0002\u0012\r\n\u0005x_pos\u0018\u0007 \u0001(\u0005\u0012\r\n\u0005y_pos\u0018\u0008 \u0001(\u0005\u0012\u0011\n\tx_percent\u0018\t \u0001(\u0002\u0012\u0011\n\ty_percent\u0018\n \u0001(\u0002\"{\n\u000bTouchDevice\u0012\u0015\n\u0011TOOL_TYPE_UNKNOWN\u0010\u0000\u0012\u0014\n\u0010TOOL_TYPE_FINGER\u0010\u0001\u0012\u0014\n\u0010TOOL_TYPE_STYLUS\u0010\u0002\u0012\u0013\n\u000fTOOL_TYPE_MOUSE\u0010\u0003\u0012\u0014\n\u0010TOOL_TYPE_ERASER\u0010\u0004\u001aw\n\nTouchEvent\u0012\u0015\n\rpointer_count\u0018\u0001 \u0001(\u0005\u0012R\n\u0012pointer_properties\u0018\u0002 \u0003(\u000b26.com.haima.hmcp.proto.OneInputOPData.PointerProperties\"\u00c1&\n\u0007InputOP\u0012\u0010\n\u000cOP_KEY_BEGIN\u0010\u0000\u0012\u0015\n\u0011OP_KEY_VK_LBUTTON\u0010\u0001\u0012\u0015\n\u0011OP_KEY_VK_RBUTTON\u0010\u0002\u0012\u0014\n\u0010OP_KEY_VK_CANCEL\u0010\u0003\u0012\u0015\n\u0011OP_KEY_VK_MBUTTON\u0010\u0004\u0012\u0016\n\u0012OP_KEY_VK_XBUTTON1\u0010\u0005\u0012\u0016\n\u0012OP_KEY_VK_XBUTTON2\u0010\u0006\u0012\u0012\n\u000eOP_KEY_VK_BACK\u0010\u0008\u0012\u0011\n\rOP_KEY_VK_TAB\u0010\t\u0012\u0013\n\u000fOP_KEY_VK_CLEAR\u0010\u000c\u0012\u0014\n\u0010OP_KEY_VK_RETURN\u0010\r\u0012\u0013\n\u000fOP_KEY_VK_SHIFT\u0010\u0010\u0012\u0015\n\u0011OP_KEY_VK_CONTROL\u0010\u0011\u0012\u0012\n\u000eOP_KEY_VK_MENU\u0010\u0012\u0012\u0013\n\u000fOP_KEY_VK_PAUSE\u0010\u0013\u0012\u0015\n\u0011OP_KEY_VK_CAPITAL\u0010\u0014\u0012\u0012\n\u000eOP_KEY_VK_KANA\u0010\u0015\u0012\u0014\n\u0010OP_KEY_VK_HANGUL\u0010\u0015\u0012\u0013\n\u000fOP_KEY_VK_JUNJA\u0010\u0017\u0012\u0013\n\u000fOP_KEY_VK_FINAL\u0010\u0018\u0012\u0013\n\u000fOP_KEY_VK_HANJA\u0010\u0019\u0012\u0013\n\u000fOP_KEY_VK_KANJI\u0010\u0019\u0012\u0014\n\u0010OP_KEY_VK_ESCAPE\u0010\u001b\u0012\u0015\n\u0011OP_KEY_VK_CONVERT\u0010\u001c\u0012\u0018\n\u0014OP_KEY_VK_NONCONVERT\u0010\u001d\u0012\u0014\n\u0010OP_KEY_VK_ACCEPT\u0010\u001e\u0012\u0018\n\u0014OP_KEY_VK_MODECHANGE\u0010\u001f\u0012\u0013\n\u000fOP_KEY_VK_SPACE\u0010 \u0012\u0013\n\u000fOP_KEY_VK_PRIOR\u0010!\u0012\u0012\n\u000eOP_KEY_VK_NEXT\u0010\"\u0012\u0011\n\rOP_KEY_VK_END\u0010#\u0012\u0012\n\u000eOP_KEY_VK_HOME\u0010$\u0012\u0012\n\u000eOP_KEY_VK_LEFT\u0010%\u0012\u0010\n\u000cOP_KEY_VK_UP\u0010&\u0012\u0013\n\u000fOP_KEY_VK_RIGHT\u0010\'\u0012\u0012\n\u000eOP_KEY_VK_DOWN\u0010(\u0012\u0014\n\u0010OP_KEY_VK_SELECT\u0010)\u0012\u0013\n\u000fOP_KEY_VK_PRINT\u0010*\u0012\u0015\n\u0011OP_KEY_VK_EXECUTE\u0010+\u0012\u0016\n\u0012OP_KEY_VK_SNAPSHOT\u0010,\u0012\u0014\n\u0010OP_KEY_VK_INSERT\u0010-\u0012\u0014\n\u0010OP_KEY_VK_DELETE\u0010.\u0012\u0012\n\u000eOP_KEY_VK_HELP\u0010/\u0012\u0010\n\u000cOP_KEY_KEY_0\u00100\u0012\u0010\n\u000cOP_KEY_KEY_1\u00101\u0012\u0010\n\u000cOP_KEY_KEY_2\u00102\u0012\u0010\n\u000cOP_KEY_KEY_3\u00103\u0012\u0010\n\u000cOP_KEY_KEY_4\u00104\u0012\u0010\n\u000cOP_KEY_KEY_5\u00105\u0012\u0010\n\u000cOP_KEY_KEY_6\u00106\u0012\u0010\n\u000cOP_KEY_KEY_7\u00107\u0012\u0010\n\u000cOP_KEY_KEY_8\u00108\u0012\u0010\n\u000cOP_KEY_KEY_9\u00109\u0012\u0010\n\u000cOP_KEY_KEY_A\u0010A\u0012\u0010\n\u000cOP_KEY_KEY_B\u0010B\u0012\u0010\n\u000cOP_KEY_KEY_C\u0010C\u0012\u0010\n\u000cOP_KEY_KEY_D\u0010D\u0012\u0010\n\u000cOP_KEY_KEY_E\u0010E\u0012\u0010\n\u000cOP_KEY_KEY_F\u0010F\u0012\u0010\n\u000cOP_KEY_KEY_G\u0010G\u0012\u0010\n\u000cOP_KEY_KEY_H\u0010H\u0012\u0010\n\u000cOP_KEY_KEY_I\u0010I\u0012\u0010\n\u000cOP_KEY_KEY_J\u0010J\u0012\u0010\n\u000cOP_KEY_KEY_K\u0010K\u0012\u0010\n\u000cOP_KEY_KEY_L\u0010L\u0012\u0010\n\u000cOP_KEY_KEY_M\u0010M\u0012\u0010\n\u000cOP_KEY_KEY_N\u0010N\u0012\u0010\n\u000cOP_KEY_KEY_O\u0010O\u0012\u0010\n\u000cOP_KEY_KEY_P\u0010P\u0012\u0010\n\u000cOP_KEY_KEY_Q\u0010Q\u0012\u0010\n\u000cOP_KEY_KEY_R\u0010R\u0012\u0010\n\u000cOP_KEY_KEY_S\u0010S\u0012\u0010\n\u000cOP_KEY_KEY_T\u0010T\u0012\u0010\n\u000cOP_KEY_KEY_U\u0010U\u0012\u0010\n\u000cOP_KEY_KEY_V\u0010V\u0012\u0010\n\u000cOP_KEY_KEY_W\u0010W\u0012\u0010\n\u000cOP_KEY_KEY_X\u0010X\u0012\u0010\n\u000cOP_KEY_KEY_Y\u0010Y\u0012\u0010\n\u000cOP_KEY_KEY_Z\u0010Z\u0012\u0012\n\u000eOP_KEY_VK_LWIN\u0010[\u0012\u0012\n\u000eOP_KEY_VK_RWIN\u0010\\\u0012\u0012\n\u000eOP_KEY_VK_APPS\u0010]\u0012\u0013\n\u000fOP_KEY_VK_SLEEP\u0010_\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD0\u0010`\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD1\u0010a\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD2\u0010b\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD3\u0010c\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD4\u0010d\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD5\u0010e\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD6\u0010f\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD7\u0010g\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD8\u0010h\u0012\u0015\n\u0011OP_KEY_VK_NUMPAD9\u0010i\u0012\u0016\n\u0012OP_KEY_VK_MULTIPLY\u0010j\u0012\u0011\n\rOP_KEY_VK_ADD\u0010k\u0012\u0017\n\u0013OP_KEY_VK_SEPARATOR\u0010l\u0012\u0016\n\u0012OP_KEY_VK_SUBTRACT\u0010m\u0012\u0015\n\u0011OP_KEY_VK_DECIMAL\u0010n\u0012\u0014\n\u0010OP_KEY_VK_DIVIDE\u0010o\u0012\u0010\n\u000cOP_KEY_VK_F1\u0010p\u0012\u0010\n\u000cOP_KEY_VK_F2\u0010q\u0012\u0010\n\u000cOP_KEY_VK_F3\u0010r\u0012\u0010\n\u000cOP_KEY_VK_F4\u0010s\u0012\u0010\n\u000cOP_KEY_VK_F5\u0010t\u0012\u0010\n\u000cOP_KEY_VK_F6\u0010u\u0012\u0010\n\u000cOP_KEY_VK_F7\u0010v\u0012\u0010\n\u000cOP_KEY_VK_F8\u0010w\u0012\u0010\n\u000cOP_KEY_VK_F9\u0010x\u0012\u0011\n\rOP_KEY_VK_F10\u0010y\u0012\u0011\n\rOP_KEY_VK_F11\u0010z\u0012\u0011\n\rOP_KEY_VK_F12\u0010{\u0012\u0011\n\rOP_KEY_VK_F13\u0010|\u0012\u0011\n\rOP_KEY_VK_F14\u0010}\u0012\u0011\n\rOP_KEY_VK_F15\u0010~\u0012\u0011\n\rOP_KEY_VK_F16\u0010\u007f\u0012\u0012\n\rOP_KEY_VK_F17\u0010\u0080\u0001\u0012\u0012\n\rOP_KEY_VK_F18\u0010\u0081\u0001\u0012\u0012\n\rOP_KEY_VK_F19\u0010\u0082\u0001\u0012\u0012\n\rOP_KEY_VK_F20\u0010\u0083\u0001\u0012\u0012\n\rOP_KEY_VK_F21\u0010\u0084\u0001\u0012\u0012\n\rOP_KEY_VK_F22\u0010\u0085\u0001\u0012\u0012\n\rOP_KEY_VK_F23\u0010\u0086\u0001\u0012\u0012\n\rOP_KEY_VK_F24\u0010\u0087\u0001\u0012\u0016\n\u0011OP_KEY_VK_NUMLOCK\u0010\u0090\u0001\u0012\u0015\n\u0010OP_KEY_VK_SCROLL\u0010\u0091\u0001\u0012\u0015\n\u0010OP_KEY_VK_LSHIFT\u0010\u00a0\u0001\u0012\u0015\n\u0010OP_KEY_VK_RSHIFT\u0010\u00a1\u0001\u0012\u0017\n\u0012OP_KEY_VK_LCONTROL\u0010\u00a2\u0001\u0012\u0017\n\u0012OP_KEY_VK_RCONTROL\u0010\u00a3\u0001\u0012\u0014\n\u000fOP_KEY_VK_LMENU\u0010\u00a4\u0001\u0012\u0014\n\u000fOP_KEY_VK_RMENU\u0010\u00a5\u0001\u0012\u001b\n\u0016OP_KEY_VK_BROWSER_BACK\u0010\u00a6\u0001\u0012\u001e\n\u0019OP_KEY_VK_BROWSER_FORWARD\u0010\u00a7\u0001\u0012\u001e\n\u0019OP_KEY_VK_BROWSER_REFRESH\u0010\u00a8\u0001\u0012\u001b\n\u0016OP_KEY_VK_BROWSER_STOP\u0010\u00a9\u0001\u0012\u001d\n\u0018OP_KEY_VK_BROWSER_SEARCH\u0010\u00aa\u0001\u0012 \n\u001bOP_KEY_VK_BROWSER_FAVORITES\u0010\u00ab\u0001\u0012\u001b\n\u0016OP_KEY_VK_BROWSER_HOME\u0010\u00ac\u0001\u0012\u0019\n\u0014OP_KEY_VK_VOLUME_MUT\u0010\u00ad\u0001\u0012\u001a\n\u0015OP_KEY_VK_VOLUME_DOWN\u0010\u00ae\u0001\u0012\u0018\n\u0013OP_KEY_VK_VOLUME_UP\u0010\u00af\u0001\u0012\u001f\n\u001aOP_KEY_VK_MEDIA_NEXT_TRACK\u0010\u00b0\u0001\u0012\u001f\n\u001aOP_KEY_VK_MEDIA_PREV_TRACK\u0010\u00b1\u0001\u0012\u0019\n\u0014OP_KEY_VK_MEDIA_STOP\u0010\u00b2\u0001\u0012\u001f\n\u001aOP_KEY_VK_MEDIA_PLAY_PAUSE\u0010\u00b3\u0001\u0012\u001a\n\u0015OP_KEY_VK_LAUNCH_MAIL\u0010\u00b4\u0001\u0012\"\n\u001dOP_KEY_VK_LAUNCH_MEDIA_SELECT\u0010\u00b5\u0001\u0012\u001a\n\u0015OP_KEY_VK_LAUNCH_APP1\u0010\u00b6\u0001\u0012\u001a\n\u0015OP_KEY_VK_LAUNCH_APP2\u0010\u00b7\u0001\u0012\u0014\n\u000fOP_KEY_VK_OEM_1\u0010\u00ba\u0001\u0012\u0017\n\u0012OP_KEY_VK_OEM_PLUS\u0010\u00bb\u0001\u0012\u0018\n\u0013OP_KEY_VK_OEM_COMMA\u0010\u00bc\u0001\u0012\u0018\n\u0013OP_KEY_VK_OEM_MINUS\u0010\u00bd\u0001\u0012\u0019\n\u0014OP_KEY_VK_OEM_PERIOD\u0010\u00be\u0001\u0012\u0014\n\u000fOP_KEY_VK_OEM_2\u0010\u00bf\u0001\u0012\u0014\n\u000fOP_KEY_VK_OEM_3\u0010\u00c0\u0001\u0012\u0014\n\u000fOP_KEY_VK_OEM_4\u0010\u00db\u0001\u0012\u0014\n\u000fOP_KEY_VK_OEM_5\u0010\u00dc\u0001\u0012\u0014\n\u000fOP_KEY_VK_OEM_6\u0010\u00dd\u0001\u0012\u0014\n\u000fOP_KEY_VK_OEM_7\u0010\u00de\u0001\u0012\u0014\n\u000fOP_KEY_VK_OEM_8\u0010\u00df\u0001\u0012\u0016\n\u0011OP_KEY_VK_OEM_102\u0010\u00e2\u0001\u0012\u0015\n\u0010OP_KEY_VK_PACKET\u0010\u00e7\u0001\u0012\u0019\n\u0014OP_KEY_VK_PROCESSKEY\u0010\u00e5\u0001\u0012\u0013\n\u000eOP_KEY_VK_ATTN\u0010\u00f6\u0001\u0012\u0014\n\u000fOP_KEY_VK_CRSEL\u0010\u00f7\u0001\u0012\u0014\n\u000fOP_KEY_VK_EXSEL\u0010\u00f8\u0001\u0012\u0014\n\u000fOP_KEY_VK_EREOF\u0010\u00f9\u0001\u0012\u0013\n\u000eOP_KEY_VK_PLAY\u0010\u00fa\u0001\u0012\u0013\n\u000eOP_KEY_VK_ZOOM\u0010\u00fb\u0001\u0012\u0015\n\u0010OP_KEY_VK_NONAME\u0010\u00fc\u0001\u0012\u0012\n\rOP_KEY_VK_PA1\u0010\u00fd\u0001\u0012\u0018\n\u0013OP_KEY_VK_OEM_CLEAR\u0010\u00fe\u0001\u0012\u000f\n\nOP_KEY_END\u0010\u00fe\u0003\u0012\u0013\n\u000eOP_MOUSE_BEGIN\u0010\u00ff\u0003\u0012\u0019\n\u0014OP_MOUSE_BUTTON_LEFT\u0010\u0080\u0004\u0012\u001b\n\u0016OP_MOUSE_BUTTON_MIDDLE\u0010\u0081\u0004\u0012\u001a\n\u0015OP_MOUSE_BUTTON_RIGHT\u0010\u0082\u0004\u0012\u0013\n\u000eOP_MOUSE_WHEEL\u0010\u0083\u0004\u0012\u0011\n\u000cOP_MOUSE_MOV\u0010\u0084\u0004\u0012\u0016\n\u0011OP_MOUSE_BUTTON_4\u0010\u0086\u0004\u0012\u0016\n\u0011OP_MOUSE_BUTTON_5\u0010\u0087\u0004\u0012\u0011\n\u000cOP_MOUSE_END\u0010\u00fe\u0005\u0012\u0015\n\u0010OP_GAMEPAD_BEGIN\u0010\u00ff\u0005\u0012\u0015\n\u0010OP_GAMEPAD_BTN_A\u0010\u0080\u0006\u0012\u0015\n\u0010OP_GAMEPAD_BTN_B\u0010\u0081\u0006\u0012\u0015\n\u0010OP_GAMEPAD_BTN_C\u0010\u0082\u0006\u0012\u0015\n\u0010OP_GAMEPAD_BTN_D\u0010\u0083\u0006\u0012\u0016\n\u0011OP_GAMEPAD_BTN_L1\u0010\u0084\u0006\u0012\u0016\n\u0011OP_GAMEPAD_BTN_R1\u0010\u0085\u0006\u0012\u0016\n\u0011OP_GAMEPAD_BTN_L2\u0010\u0086\u0006\u0012\u0016\n\u0011OP_GAMEPAD_BTN_R2\u0010\u0087\u0006\u0012\u001a\n\u0015OP_GAMEPAD_BTN_SELECT\u0010\u0088\u0006\u0012\u0019\n\u0014OP_GAMEPAD_BTN_START\u0010\u0089\u0006\u0012\u0016\n\u0011OP_GAMEPAD_BTN_LA\u0010\u008a\u0006\u0012\u0016\n\u0011OP_GAMEPAD_BTN_RA\u0010\u008b\u0006\u0012\u0018\n\u0013OP_GAMEPAD_BTN_MODE\u0010\u008c\u0006\u0012\u0019\n\u0014OP_GAMEPAD_BTN_TURBO\u0010\u008d\u0006\u0012\u0019\n\u0014OP_GAMEPAD_BTN_CLEAR\u0010\u008e\u0006\u0012\u0019\n\u0014OP_GAEMPAD_AXIS_POV0\u0010\u008f\u0006\u0012\u0016\n\u0011OP_GAMEPAD_AXIS_X\u0010\u0090\u0006\u0012\u0016\n\u0011OP_GAMEPAD_AXIS_Y\u0010\u0091\u0006\u0012\u0016\n\u0011OP_GAMEPAD_AXIS_Z\u0010\u0092\u0006\u0012\u001f\n\u001aOP_GAMEPAD_AXIS_Z_ROTATION\u0010\u0093\u0006\u0012\u001a\n\u0015OP_GAMEPAD_BTN_RECORD\u0010\u0094\u0006\u0012\u0013\n\u000eOP_GAMEPAD_END\u0010\u00fe\u0007\u0012\u0014\n\u000fOP_XINPUT_BEGIN\u0010\u00ff\u0007\u0012\u0016\n\u0011OP_XINPUT_BUTTONS\u0010\u0080\u0008\u0012\u001b\n\u0016OP_XINPUT_LEFT_TRIGGER\u0010\u0081\u0008\u0012\u001c\n\u0017OP_XINPUT_RIGHT_TRIGGER\u0010\u0082\u0008\u0012\u0017\n\u0012OP_XINPUT_THUMB_LX\u0010\u0083\u0008\u0012\u0017\n\u0012OP_XINPUT_THUMB_LY\u0010\u0084\u0008\u0012\u0017\n\u0012OP_XINPUT_THUMB_RX\u0010\u0085\u0008\u0012\u0017\n\u0012OP_XINPUT_THUMB_RY\u0010\u0086\u0008\u0012\u0017\n\u0012OP_XINPUT_A_BUTTON\u0010\u0087\u0008\u0012\u0012\n\rOP_XINPUT_END\u0010\u00fe\u0008\u0012\u0013\n\u000eOP_TOUCH_BEGIN\u0010\u00ff\u0008\u0012\u0012\n\rOP_TOUCH_MOVE\u0010\u0080\t\u0012\u0013\n\u000eOP_TOUCH_POINT\u0010\u0081\t\u0012\u0014\n\u000fOP_TOUCH_CANCEL\u0010\u0082\t\u0012\u0011\n\u000cOP_TOUCH_END\u0010\u00e2\t\u001a\u0002\u0010\u0001\"n\n\nInputState\u0012\u0014\n\u0010OP_STATE_DEFAULT\u0010\u0001\u0012\u0011\n\rOP_STATE_DOWN\u0010\u0002\u0012\u000f\n\u000bOP_STATE_UP\u0010\u0003\u0012\u0013\n\u000fOP_VK_UNTOGGLED\u0010\u0004\u0012\u0011\n\rOP_VK_TOGGLED\u0010\u0005\"4\n\u000cPositionMode\u0012\u0011\n\rABSOLUTE_MODE\u0010\u0000\u0012\u0011\n\rRELATIVE_MODE\u0010\u0001\"o\n\u000bInputOPData\u00125\n\u0007op_list\u0018\u0001 \u0003(\u000b2$.com.haima.hmcp.proto.OneInputOPData\u0012\u0018\n\u0010handle_combo_key\u0018\u0002 \u0001(\u0008\u0012\u000f\n\u0007op_tick\u0018c \u0001(\r\"A\n\rGameSDKAction\u0012\u000b\n\u0003cid\u0018\u0001 \u0001(\u0003\u0012\u000f\n\u0007user_id\u0018\u0002 \u0001(\t\u0012\u0012\n\nsdk_action\u0018\u0003 \u0001(\t\"=\n\u000bGameSDKData\u0012\u000b\n\u0003cid\u0018\u0001 \u0001(\u0003\u0012\u000f\n\u0007user_id\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008sdk_data\u0018\u0003 \u0001(\t\"\"\n\u0011ResetNoInputTimer\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0005\"1\n\u0012RestNoInputTimer_R\u0012\u000e\n\u0006result\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003msg\u0018\u0002 \u0001(\t\"\u001d\n\rClipBoardData\u0012\u000c\n\u0004data\u0018\u0001 \u0001(\u000c\"\u00b7\u0001\n\nFileUpload\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0002 \u0001(\u0005\u0012\u000b\n\u0003md5\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004size\u0018\u0004 \u0001(\u0005\u0012\u0014\n\u000ctotal_blocks\u0018\u0005 \u0001(\u0005\u0012\u0013\n\u000bblock_index\u0018\u0006 \u0001(\u0005\u0012\u0012\n\nblock_size\u0018\u0007 \u0001(\u0005\u0012\u0011\n\tblock_md5\u0018\u0008 \u0001(\t\u0012\u0012\n\nblock_data\u0018\t \u0001(\u000c\u0012\u000c\n\u0004path\u0018\n \u0001(\t\"\u00ed\u0001\n\u000cFileUpload_R\u0012\u000c\n\u0004code\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003msg\u0018\u0002 \u0001(\t\u0012\u0011\n\tack_index\u0018\u0003 \u0001(\u0005\"\u00ae\u0001\n\tErrorCode\u0012\u000b\n\u0007SUCCESS\u0010\u0000\u0012\u0019\n\u0015CHECK_BLOCK_HASH_FAIL\u0010\u0001\u0012\u0018\n\u0014CHECK_FILE_HASH_FAIL\u0010\u0002\u0012\u0013\n\u000fPARSE_MSG_ERROR\u0010\u0003\u0012\u0019\n\u0015UPLOAD_PATH_NOT_EXIST\u0010\u0004\u0012\u001a\n\u0016DIRECTORY_PATH_INVALID\u0010\u0005\u0012\u0013\n\u000fSAVE_FILE_ERROR\u0010\u0006\"8\n\u000cFileDownload\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0002 \u0001(\u0005\u0012\u000c\n\u0004path\u0018\u0003 \u0001(\t\"\u00d7\u0001\n\u000eFileDownload_R\u0012\u000c\n\u0004code\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003msg\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003url\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004size\u0018\u0004 \u0001(\u0005\u0012\u000c\n\u0004type\u0018\u0005 \u0001(\u0005\u0012\u000b\n\u0003md5\u0018\u0006 \u0001(\t\"t\n\tErrorCode\u0012\u000b\n\u0007SUCCESS\u0010\u0000\u0012\r\n\tNOT_FOUND\u0010\u0001\u0012\u000b\n\u0007TIMEOUT\u0010\u0002\u0012\u0013\n\u000fPARSE_MSG_ERROR\u0010\u0003\u0012\u001b\n\u0017DOWNLOAD_PATH_NOT_EXIST\u0010\u0004\u0012\u000c\n\u0008GS_ERROR\u0010\u0005\" \n\rShellCommands\u0012\u000f\n\u0007content\u0018\u0001 \u0001(\t\"w\n\u000fShellCommands_R\u0012\u000e\n\u0006result\u0018\u0001 \u0001(\u0005\u0012\u000e\n\u0006output\u0018\u0002 \u0001(\t\"D\n\u000fShellExecResult\u0012\u000b\n\u0007SUCCESS\u0010\u0000\u0012\u0010\n\u000cPARSE_FAILED\u0010\u0001\u0012\u0012\n\u000eEXECUTE_FAILED\u0010\u0002\"\u00bf\u0001\n\tXInputMSG\u0012\u0010\n\u0008msg_type\u0018\u0001 \u0001(\u0005\u0012\u0012\n\nuser_index\u0018\u0002 \u0001(\u0005\u0012\u0018\n\u0010left_motor_speed\u0018\u0003 \u0001(\u0005\u0012\u0019\n\u0011right_motor_speed\u0018\u0004 \u0001(\u0005\u0012\u0010\n\u0008duration\u0018\u0005 \u0001(\u0002\u0012\u000e\n\u0006vendor\u0018\u0006 \u0001(\u0005\"\u0018\n\u0007MsgType\u0012\r\n\tVIBRATION\u0010\u0001\"\u001b\n\u0006Vendor\u0012\u0008\n\u0004XBOX\u0010\u0000\u0012\u0007\n\u0003DS4\u0010\u0001\"f\n\tMICStatus\u0012:\n\nmic_status\u0018\u0001 \u0001(\u000e2&.com.haima.hmcp.proto.MICStatus.Status\"\u001d\n\u0006Status\u0012\u0008\n\u0004OPEN\u0010\u0000\u0012\t\n\u0005CLOSE\u0010\u0001\"\u00da\u0001\n\tGameState\u0012\u0012\n\nstate_type\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007game_id\u0018\u0002 \u0001(\u0005\u0012\u0010\n\u0008exe_name\u0018\u0003 \u0001(\t\u0012\u0012\n\nerror_code\u0018\u0004 \u0001(\u0005\u0012\u0011\n\terror_msg\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008ext_info\u0018\u0006 \u0001(\t\"1\n\tStateType\u0012\u000c\n\u0008INITIATE\u0010\u0001\u0012\t\n\u0005READY\u0010\u0002\u0012\u000b\n\u0007FAILURE\u0010\u0003\"*\n\u0006GameID\u0012\t\n\u0005SLICE\u0010\u0000\u0012\t\n\u0005STEAM\u0010\n\u0012\n\n\u0006OTHERS\u0010d*j\n\nClientType\u0012\u0008\n\u0004NONE\u0010\u0000\u0012\u0006\n\u0002PC\u0010\u0001\u0012\u000b\n\u0007ANDROID\u0010\u0002\u0012\u0007\n\u0003WEB\u0010\u0003\u0012\u0007\n\u0003IOS\u0010\u0004\u0012\u0007\n\u0003MAC\u0010\u0005\u0012\n\n\u0006IOS_H5\u0010\u0006\u0012\u000e\n\nANDROID_H5\u0010\u0007\u0012\u0006\n\u0002TV\u0010\u0008*b\n\u0007IMEType\u0012\u0010\n\u000cIME_STANDARD\u0010\u0000\u0012\u0010\n\u000cIME_PASSWORD\u0010\u0001\u0012\u000e\n\nIME_NUMBER\u0010\u0002\u0012\r\n\tIME_PHONE\u0010\u0003\u0012\u0014\n\u0010IME_EMAILADDRESS\u0010\u0004*.\n\nStatusType\u0012\u000f\n\u000bSTATUS_HIDE\u0010\u0000\u0012\u000f\n\u000bSTATUS_SHOW\u0010\u0001"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/haima/hmcp/proto/GSSDK$1;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/haima/hmcp/proto/GSSDK$1;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14
    .line 15
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GSStateNotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 33
    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 35
    .line 36
    const-string v3, "Type"

    .line 37
    .line 38
    const-string v4, "Value"

    .line 39
    .line 40
    const-string v5, "ExtInfo"

    .line 41
    .line 42
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-direct {v1, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GSStateNotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 50
    .line 51
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 65
    .line 66
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GSNotification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 67
    .line 68
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 69
    .line 70
    const-string v7, "QuitType"

    .line 71
    .line 72
    const-string v8, "Cid"

    .line 73
    .line 74
    filled-new-array {v3, v8, v5, v4, v7}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-direct {v6, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GSNotification_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 82
    .line 83
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v5, 0x2

    .line 92
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 97
    .line 98
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_IMEStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 99
    .line 100
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 101
    .line 102
    const-string v6, "ImeType"

    .line 103
    .line 104
    const-string v7, "StatusType"

    .line 105
    .line 106
    filled-new-array {v7, v6}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_IMEStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 114
    .line 115
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v5, 0x3

    .line 124
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 129
    .line 130
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GamepadMouse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 131
    .line 132
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 133
    .line 134
    const-string v6, "ModeSwitch"

    .line 135
    .line 136
    filled-new-array {v6}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GamepadMouse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 144
    .line 145
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/4 v5, 0x4

    .line 154
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 159
    .line 160
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GamepadState_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 161
    .line 162
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 163
    .line 164
    const-string v6, "Vendor"

    .line 165
    .line 166
    const-string v9, "State"

    .line 167
    .line 168
    const-string v10, "Index"

    .line 169
    .line 170
    filled-new-array {v10, v6, v9}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GamepadState_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 178
    .line 179
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const/4 v5, 0x5

    .line 188
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 193
    .line 194
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_IMEStatusNotify_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 195
    .line 196
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 197
    .line 198
    const-string v6, "TerminalType"

    .line 199
    .line 200
    const-string v9, "GamepadState"

    .line 201
    .line 202
    filled-new-array {v6, v7, v9}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_IMEStatusNotify_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 210
    .line 211
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const/4 v5, 0x6

    .line 220
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 225
    .line 226
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_InputMethodChData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 227
    .line 228
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 229
    .line 230
    const-string v6, "InputBuf"

    .line 231
    .line 232
    filled-new-array {v6}, [Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_InputMethodChData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 240
    .line 241
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const/4 v5, 0x7

    .line 250
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 255
    .line 256
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 257
    .line 258
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 259
    .line 260
    const-string v9, "ShowOrHide"

    .line 261
    .line 262
    const-string v10, "CursorPos"

    .line 263
    .line 264
    const-string v11, "GameCursorSyncSeqNum"

    .line 265
    .line 266
    const-string v12, "CursorStyle"

    .line 267
    .line 268
    const-string v13, "GameCursorData"

    .line 269
    .line 270
    const-string v14, "IconCursorHotSpot"

    .line 271
    .line 272
    const-string v15, "CursorWidth"

    .line 273
    .line 274
    const-string v16, "CursorHeight"

    .line 275
    .line 276
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 294
    .line 295
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_CursorFrame_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 296
    .line 297
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 298
    .line 299
    const-string v7, "CursorHotSpot"

    .line 300
    .line 301
    const-string v9, "FrameData"

    .line 302
    .line 303
    const-string v10, "StepFrame"

    .line 304
    .line 305
    filled-new-array {v10, v7, v9}, [Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-direct {v6, v5, v7}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    sput-object v6, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_CursorFrame_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 323
    .line 324
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_GameCursorFrameData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 325
    .line 326
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 327
    .line 328
    const-string v6, "FrameRate"

    .line 329
    .line 330
    const-string v7, "CursorFrames"

    .line 331
    .line 332
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_GameCursorFrameData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 340
    .line 341
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    const/16 v5, 0x8

    .line 350
    .line 351
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 356
    .line 357
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameAudioData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 358
    .line 359
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 360
    .line 361
    const-string v6, "AudioData"

    .line 362
    .line 363
    filled-new-array {v6}, [Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameAudioData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 371
    .line 372
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    const/16 v5, 0x9

    .line 381
    .line 382
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 387
    .line 388
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_CoordinatePos_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 389
    .line 390
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 391
    .line 392
    const-string v6, "X"

    .line 393
    .line 394
    const-string v7, "Y"

    .line 395
    .line 396
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_CoordinatePos_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 404
    .line 405
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    const/16 v5, 0xa

    .line 414
    .line 415
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 420
    .line 421
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 422
    .line 423
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 424
    .line 425
    const-string v9, "InputOp"

    .line 426
    .line 427
    const-string v10, "InputState"

    .line 428
    .line 429
    const-string v11, "Value"

    .line 430
    .line 431
    const-string v12, "PosCursor"

    .line 432
    .line 433
    const-string v13, "PosMouse"

    .line 434
    .line 435
    const-string v14, "OpDevice"

    .line 436
    .line 437
    const-string v15, "XinputUserIndex"

    .line 438
    .line 439
    const-string v16, "GameCursorSyncSeqNum"

    .line 440
    .line 441
    const-string v17, "TouchEvent"

    .line 442
    .line 443
    const-string v18, "PosMode"

    .line 444
    .line 445
    const-string v19, "SerialNumber"

    .line 446
    .line 447
    const-string v20, "Timestamp"

    .line 448
    .line 449
    const-string v21, "Wheel"

    .line 450
    .line 451
    const-string v22, "WheelH"

    .line 452
    .line 453
    const-string v23, "Vendor"

    .line 454
    .line 455
    filled-new-array/range {v9 .. v23}, [Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    invoke-direct {v5, v0, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 463
    .line 464
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    check-cast v2, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 473
    .line 474
    sput-object v2, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_PointerProperties_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 475
    .line 476
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 477
    .line 478
    const-string v9, "Id"

    .line 479
    .line 480
    const-string v10, "Type"

    .line 481
    .line 482
    const-string v11, "Pressure"

    .line 483
    .line 484
    const-string v12, "Size"

    .line 485
    .line 486
    const-string v13, "TouchMajor"

    .line 487
    .line 488
    const-string v14, "TouchMinor"

    .line 489
    .line 490
    const-string v15, "XPos"

    .line 491
    .line 492
    const-string v16, "YPos"

    .line 493
    .line 494
    const-string v17, "XPercent"

    .line 495
    .line 496
    const-string v18, "YPercent"

    .line 497
    .line 498
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    invoke-direct {v5, v2, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_PointerProperties_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 506
    .line 507
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 516
    .line 517
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_TouchEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 518
    .line 519
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 520
    .line 521
    const-string v2, "PointerCount"

    .line 522
    .line 523
    const-string v5, "PointerProperties"

    .line 524
    .line 525
    filled-new-array {v2, v5}, [Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_TouchEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 533
    .line 534
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    const/16 v1, 0xb

    .line 543
    .line 544
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 549
    .line 550
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_InputOPData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 551
    .line 552
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 553
    .line 554
    const-string v2, "HandleComboKey"

    .line 555
    .line 556
    const-string v5, "OpTick"

    .line 557
    .line 558
    const-string v6, "OpList"

    .line 559
    .line 560
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_InputOPData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 568
    .line 569
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    const/16 v1, 0xc

    .line 578
    .line 579
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 584
    .line 585
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameSDKAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 586
    .line 587
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 588
    .line 589
    const-string v2, "SdkAction"

    .line 590
    .line 591
    const-string v5, "UserId"

    .line 592
    .line 593
    filled-new-array {v8, v5, v2}, [Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameSDKAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 601
    .line 602
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    const/16 v1, 0xd

    .line 611
    .line 612
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 617
    .line 618
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameSDKData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 619
    .line 620
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 621
    .line 622
    const-string v2, "SdkData"

    .line 623
    .line 624
    filled-new-array {v8, v5, v2}, [Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameSDKData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 632
    .line 633
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    const/16 v1, 0xe

    .line 642
    .line 643
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 648
    .line 649
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ResetNoInputTimer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 650
    .line 651
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 652
    .line 653
    filled-new-array {v4}, [Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ResetNoInputTimer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 661
    .line 662
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    const/16 v1, 0xf

    .line 671
    .line 672
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 677
    .line 678
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_RestNoInputTimer_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 679
    .line 680
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 681
    .line 682
    const-string v2, "Result"

    .line 683
    .line 684
    const-string v4, "Msg"

    .line 685
    .line 686
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v5

    .line 690
    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_RestNoInputTimer_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 694
    .line 695
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    const/16 v1, 0x10

    .line 704
    .line 705
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 710
    .line 711
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ClipBoardData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 712
    .line 713
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 714
    .line 715
    const-string v5, "Data"

    .line 716
    .line 717
    filled-new-array {v5}, [Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v5

    .line 721
    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ClipBoardData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 725
    .line 726
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    const/16 v1, 0x11

    .line 735
    .line 736
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 741
    .line 742
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileUpload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 743
    .line 744
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 745
    .line 746
    const-string v5, "Name"

    .line 747
    .line 748
    const-string v6, "Type"

    .line 749
    .line 750
    const-string v7, "Md5"

    .line 751
    .line 752
    const-string v8, "Size"

    .line 753
    .line 754
    const-string v9, "TotalBlocks"

    .line 755
    .line 756
    const-string v10, "BlockIndex"

    .line 757
    .line 758
    const-string v11, "BlockSize"

    .line 759
    .line 760
    const-string v12, "BlockMd5"

    .line 761
    .line 762
    const-string v13, "BlockData"

    .line 763
    .line 764
    const-string v14, "Path"

    .line 765
    .line 766
    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v5

    .line 770
    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileUpload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 774
    .line 775
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    const/16 v1, 0x12

    .line 784
    .line 785
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 790
    .line 791
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileUpload_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 792
    .line 793
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 794
    .line 795
    const-string v5, "Code"

    .line 796
    .line 797
    const-string v6, "AckIndex"

    .line 798
    .line 799
    filled-new-array {v5, v4, v6}, [Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v4

    .line 803
    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileUpload_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 807
    .line 808
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    const/16 v1, 0x13

    .line 817
    .line 818
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 823
    .line 824
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileDownload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 825
    .line 826
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 827
    .line 828
    const-string v4, "Name"

    .line 829
    .line 830
    const-string v5, "Path"

    .line 831
    .line 832
    filled-new-array {v4, v3, v5}, [Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileDownload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 840
    .line 841
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    const/16 v1, 0x14

    .line 850
    .line 851
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 856
    .line 857
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileDownload_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 858
    .line 859
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 860
    .line 861
    const-string v3, "Code"

    .line 862
    .line 863
    const-string v4, "Msg"

    .line 864
    .line 865
    const-string v5, "Url"

    .line 866
    .line 867
    const-string v6, "Size"

    .line 868
    .line 869
    const-string v7, "Type"

    .line 870
    .line 871
    const-string v8, "Md5"

    .line 872
    .line 873
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileDownload_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 881
    .line 882
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    const/16 v1, 0x15

    .line 891
    .line 892
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 897
    .line 898
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ShellCommands_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 899
    .line 900
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 901
    .line 902
    const-string v3, "Content"

    .line 903
    .line 904
    filled-new-array {v3}, [Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v3

    .line 908
    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ShellCommands_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 912
    .line 913
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    const/16 v1, 0x16

    .line 922
    .line 923
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 928
    .line 929
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ShellCommands_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 930
    .line 931
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 932
    .line 933
    const-string v3, "Output"

    .line 934
    .line 935
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v2

    .line 939
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ShellCommands_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 943
    .line 944
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    const/16 v1, 0x17

    .line 953
    .line 954
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 959
    .line 960
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_XInputMSG_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 961
    .line 962
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 963
    .line 964
    const-string v2, "MsgType"

    .line 965
    .line 966
    const-string v3, "UserIndex"

    .line 967
    .line 968
    const-string v4, "LeftMotorSpeed"

    .line 969
    .line 970
    const-string v5, "RightMotorSpeed"

    .line 971
    .line 972
    const-string v6, "Duration"

    .line 973
    .line 974
    const-string v7, "Vendor"

    .line 975
    .line 976
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_XInputMSG_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 984
    .line 985
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    const/16 v1, 0x18

    .line 994
    .line 995
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1000
    .line 1001
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_MICStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1002
    .line 1003
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1004
    .line 1005
    const-string v2, "MicStatus"

    .line 1006
    .line 1007
    filled-new-array {v2}, [Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v2

    .line 1011
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_MICStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1015
    .line 1016
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    const/16 v1, 0x19

    .line 1025
    .line 1026
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1031
    .line 1032
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameState_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1033
    .line 1034
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1035
    .line 1036
    const-string v2, "StateType"

    .line 1037
    .line 1038
    const-string v3, "GameId"

    .line 1039
    .line 1040
    const-string v4, "ExeName"

    .line 1041
    .line 1042
    const-string v5, "ErrorCode"

    .line 1043
    .line 1044
    const-string v6, "ErrorMsg"

    .line 1045
    .line 1046
    const-string v7, "ExtInfo"

    .line 1047
    .line 1048
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v2

    .line 1052
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameState_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 1056
    .line 1057
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GSStateNotice_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GSStateNotice_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GSNotification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$12200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameAudioData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$12300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameAudioData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GSNotification_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$13100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_CoordinatePos_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$13200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_CoordinatePos_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$14200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$14300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$14400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_PointerProperties_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$14500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_PointerProperties_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$16300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_TouchEvent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$16400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_OneInputOPData_TouchEvent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_InputOPData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_InputOPData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$21000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameSDKAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$21100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameSDKAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$22200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameSDKData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$22300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameSDKData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$23400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ResetNoInputTimer_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$23500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ResetNoInputTimer_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$24400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_RestNoInputTimer_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$24500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_RestNoInputTimer_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$25500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ClipBoardData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$25600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ClipBoardData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_IMEStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$26500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileUpload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$26600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileUpload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_IMEStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$28400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileUpload_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$28500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileUpload_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$29600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileDownload_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$29700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileDownload_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$30800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileDownload_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$30900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_FileDownload_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$32300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ShellCommands_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$32400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ShellCommands_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$33300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ShellCommands_R_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$33400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_ShellCommands_R_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$34400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_XInputMSG_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$34500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_XInputMSG_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$35900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_MICStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$36000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_MICStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$36900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameState_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GamepadMouse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$37000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameState_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$3800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GamepadMouse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$38402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/haima/hmcp/proto/GSSDK;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GamepadState_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GamepadState_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$5900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_IMEStatusNotify_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$6000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_IMEStatusNotify_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$7100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_InputMethodChData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$7200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_InputMethodChData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$8100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$8200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$8300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_CursorFrame_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$8400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_CursorFrame_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$9500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_GameCursorFrameData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$9600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->internal_static_com_haima_hmcp_proto_GameCursor_GameCursorFrameData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/haima/hmcp/proto/GSSDK;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
