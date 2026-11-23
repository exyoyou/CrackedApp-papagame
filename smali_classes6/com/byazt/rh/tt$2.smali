.class public Lcom/byazt/rh/tt$2;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x73,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rh/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/rh/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/rh/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rh/tt$2;->ve:Lcom/byazt/rh/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/rh/tt$2;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/rh/tt$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/rh/tt$2;->ve:Lcom/byazt/rh/tt;

    iget-object p2, p0, Lcom/byazt/rh/tt$2;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/byazt/rh/tt;->c(Lcom/byazt/rh/tt;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "download "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/byazt/rh/tt$2;->tt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrandVideoCacheManager"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/rh/tt$2;->ve:Lcom/byazt/rh/tt;

    iget-object p2, p0, Lcom/byazt/rh/tt$2;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/byazt/rh/tt;->c(Lcom/byazt/rh/tt;Ljava/lang/String;)V

    return-void
.end method
