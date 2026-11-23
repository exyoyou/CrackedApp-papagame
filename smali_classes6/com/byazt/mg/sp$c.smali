.class public Lcom/byazt/mg/sp$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xaa,
        0xb4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/mg/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/mg/sp$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/mg/sp$c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
