.class public Lcom/byazt/yf/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/yf/uj$c;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/byazt/yf/uj$c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/byazt/yf/uj$c;->c(Lcom/byazt/yf/uj$c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/yf/uj;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/yf/uj$c;Lcom/byazt/yf/uj$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/yf/uj;-><init>(Lcom/byazt/yf/uj$c;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/uj;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
