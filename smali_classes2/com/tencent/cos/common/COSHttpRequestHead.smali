.class public Lcom/tencent/cos/common/COSHttpRequestHead;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static KEY:Lcom/tencent/cos/common/HeadKey;

.field public static VALUE:Lcom/tencent/cos/common/HeadValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/cos/common/HeadKey;->getInstance()Lcom/tencent/cos/common/HeadKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/tencent/cos/common/COSHttpRequestHead;->KEY:Lcom/tencent/cos/common/HeadKey;

    .line 6
    .line 7
    invoke-static {}, Lcom/tencent/cos/common/HeadValue;->getInstance()Lcom/tencent/cos/common/HeadValue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

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
