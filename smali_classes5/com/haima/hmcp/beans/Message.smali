.class public Lcom/haima/hmcp/beans/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACK_CLIENT_RECEIVE:I = 0x1

.field public static final ACK_CLIENT_SEND:I = 0x0

.field public static final TYPE_AD_MESSAGE:I = 0x3

.field public static final TYPE_INTERACTIVE_MESSAGE:I = 0x4

.field public static final TYPE_PAY_MESSAGE:I = 0x1

.field public static final TYPE_SYSTEM_MESSAGE:I = 0x2


# instance fields
.field public ack:I

.field public code:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public mid:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public to:Ljava/lang/String;

.field public type:I

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
