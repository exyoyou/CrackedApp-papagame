.class public Lcom/tencent/cos/common/COSHttpRequstBody;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static KEY:Lcom/tencent/cos/common/BodyKey;

.field public static OP:Lcom/tencent/cos/common/BodyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/cos/common/BodyKey;->getInstance()Lcom/tencent/cos/common/BodyKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 6
    .line 7
    invoke-static {}, Lcom/tencent/cos/common/BodyValue;->getInstance()Lcom/tencent/cos/common/BodyValue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    .line 12
    .line 13
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
