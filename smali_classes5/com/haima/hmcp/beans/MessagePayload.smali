.class public Lcom/haima/hmcp/beans/MessagePayload;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODE_EXIT:I = 0x64

.field public static final CODE_INVALID_UTOKEN:I = 0x65


# instance fields
.field public code:I

.field public description:Ljava/lang/String;

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
