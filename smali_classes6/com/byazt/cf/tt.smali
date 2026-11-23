.class public Lcom/byazt/cf/tt;
.super Lcom/byazt/cf/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0xd
    }
.end annotation


# static fields
.field public static final ve:Lcom/byazt/cf/tt;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/cf/tt;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/byazt/cf/tt;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/cf/tt;->ve:Lcom/byazt/cf/tt;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/cf/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/cf/tt;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/cf/tt;->ve:Lcom/byazt/cf/tt;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public tt()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
