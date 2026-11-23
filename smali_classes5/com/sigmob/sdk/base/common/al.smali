.class public Lcom/sigmob/sdk/base/common/al;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/al$a;,
        Lcom/sigmob/sdk/base/common/al$d;,
        Lcom/sigmob/sdk/base/common/al$b;,
        Lcom/sigmob/sdk/base/common/al$c;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "al"

.field private static b:Lcom/sigmob/sdk/base/common/af;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/sigmob/sdk/base/common/af;
    .locals 1

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/common/al;->b:Lcom/sigmob/sdk/base/common/af;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/af;)Lcom/sigmob/sdk/base/common/af;
    .locals 0

    .line 2
    sput-object p0, Lcom/sigmob/sdk/base/common/al;->b:Lcom/sigmob/sdk/base/common/af;

    return-object p0
.end method
