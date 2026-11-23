.class public Lcom/byazt/yf/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/yf/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/lang/String;


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

.method public static synthetic c(Lcom/byazt/yf/uj$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yf/uj$c;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/byazt/yf/uj;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/yf/uj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/yf/uj;-><init>(Lcom/byazt/yf/uj$c;Lcom/byazt/yf/uj$1;)V

    return-object v0
.end method
