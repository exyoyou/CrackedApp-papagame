.class public Lcom/byazt/kcl/c$ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0x84
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kcl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ve"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kcl/c;

.field public tt:Z


# direct methods
.method public constructor <init>(Lcom/byazt/kcl/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kcl/c$ve;->c:Lcom/byazt/kcl/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/byazt/kcl/c$ve;->tt:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/kcl/c$ve;->tt:Z

    .line 2
    .line 3
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/byazt/kcl/c$ve;->tt:Z

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/byazt/kcl/c$ve;->c(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/byazt/kcl/c$ve;->c:Lcom/byazt/kcl/c;

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    invoke-virtual {p2, p1, p3}, Lcom/byazt/kcl/c;->c(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/kcl/c$ve;->c:Lcom/byazt/kcl/c;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/byazt/kcl/c;->x(Lcom/byazt/kcl/c;)Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
