.class public Lcom/byazt/e/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1bb,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/e/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Ljava/lang/String;


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

.method public static synthetic c(Lcom/byazt/e/uj$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/uj$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/e/uj$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/e/uj$c;->tt:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/e/uj$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/uj$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/byazt/e/uj;
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/e/uj;

    invoke-direct {v0, p0}, Lcom/byazt/e/uj;-><init>(Lcom/byazt/e/uj$c;)V

    return-object v0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/e/uj$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/e/uj$c;->tt:Ljava/lang/String;

    return-object p0
.end method
