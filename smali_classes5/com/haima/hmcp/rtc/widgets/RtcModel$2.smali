.class Lcom/haima/hmcp/rtc/widgets/RtcModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/listeners/HmProtoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtc/widgets/RtcModel;->setGSMUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/RtcModel;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtc/widgets/RtcModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel$2;->this$0:Lcom/haima/hmcp/rtc/widgets/RtcModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleProtoResult(Lorg/webrtc/haima/util/RtcProtoBufUtil$StatusType;)[B
    .locals 1

    .line 1
    sget-object p1, Lcom/haima/hmcp/proto/GSSDK$StatusType;->STATUS_HIDE:Lcom/haima/hmcp/proto/GSSDK$StatusType;

    .line 2
    .line 3
    sget-object v0, Lorg/webrtc/haima/util/RtcProtoBufUtil$StatusType;->STATUS_HIDE:Lorg/webrtc/haima/util/RtcProtoBufUtil$StatusType;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getIMStatusData(Lcom/haima/hmcp/proto/GSSDK$StatusType;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
