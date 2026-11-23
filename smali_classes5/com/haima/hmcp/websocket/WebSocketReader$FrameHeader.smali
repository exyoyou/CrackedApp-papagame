.class Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/websocket/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameHeader"
.end annotation


# instance fields
.field public mFin:Z

.field public mHeaderLen:I

.field public mMask:[B

.field public mOpcode:I

.field public mPayloadLen:I

.field public mReserved:I

.field public mTotalLen:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/websocket/WebSocketReader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketReader$FrameHeader;-><init>()V

    return-void
.end method
