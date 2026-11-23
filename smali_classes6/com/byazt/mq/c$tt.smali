.class public Lcom/byazt/mq/c$tt;
.super Lcom/byazt/mq/c$n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c9,
        0xaf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/mq/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tt"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/byazt/mq/c$n;-><init>(Lcom/byazt/mq/c$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/mq/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/mq/c$tt;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
