.class public Lcom/byazt/kft/UpieVideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rs/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x121
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/UpieVideoView;->c(Landroid/content/Context;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lcom/byazt/kft/UpieVideoView;

.field public final synthetic tt:I

.field public final synthetic uj:Landroid/content/Context;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/kft/UpieVideoView;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/UpieVideoView$7;->n:Lcom/byazt/kft/UpieVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kft/UpieVideoView$7;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/kft/UpieVideoView$7;->tt:I

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/kft/UpieVideoView$7;->ve:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/kft/UpieVideoView$7;->uj:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/byazt/cph/tt;->c()Lcom/byazt/cph/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kft/UpieVideoView$7;->uj:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/kft/UpieVideoView$7;->c:Ljava/lang/String;

    new-instance v3, Lcom/byazt/kft/UpieVideoView$7$1;

    invoke-direct {v3, p0}, Lcom/byazt/kft/UpieVideoView$7$1;-><init>(Lcom/byazt/kft/UpieVideoView$7;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/cph/tt;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/cph/tt$c;)V

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/UpieVideoView$7;->n:Lcom/byazt/kft/UpieVideoView;

    iget-object v1, p0, Lcom/byazt/kft/UpieVideoView$7;->c:Ljava/lang/String;

    iget v2, p0, Lcom/byazt/kft/UpieVideoView$7;->tt:I

    iget v3, p0, Lcom/byazt/kft/UpieVideoView$7;->ve:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/byazt/kft/UpieVideoView;->c(Lcom/byazt/kft/UpieVideoView;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    return-void
.end method
