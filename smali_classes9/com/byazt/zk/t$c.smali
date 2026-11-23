.class public Lcom/byazt/zk/t$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x7d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/zk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/byazt/zk/t$c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/byazt/zk/t$c;->tt:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/zk/t$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/byazt/zk/t$c;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zk/t$c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/zk/t$c;->tt:F

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/zk/t$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zk/t$c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;F)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/zk/t$c;->c:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/byazt/zk/t$c;->tt:F

    return-void
.end method
