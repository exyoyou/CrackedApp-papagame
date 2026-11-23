.class public Lcom/byazt/kft/c$12;
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
        0x4cf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c;->c(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/kft/c;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/kft/c;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/c$12;->uj:Lcom/byazt/kft/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kft/c$12;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/kft/c$12;->tt:I

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/kft/c$12;->ve:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/byazt/cph/tt;->c()Lcom/byazt/cph/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kft/c$12;->uj:Lcom/byazt/kft/c;

    invoke-static {v1}, Lcom/byazt/kft/c;->i(Lcom/byazt/kft/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/kft/c$12;->c:Ljava/lang/String;

    new-instance v3, Lcom/byazt/kft/c$12$1;

    invoke-direct {v3, p0}, Lcom/byazt/kft/c$12$1;-><init>(Lcom/byazt/kft/c$12;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/cph/tt;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/cph/tt$c;)V

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/c$12;->uj:Lcom/byazt/kft/c;

    iget-object v1, p0, Lcom/byazt/kft/c$12;->c:Ljava/lang/String;

    iget v2, p0, Lcom/byazt/kft/c$12;->tt:I

    iget v3, p0, Lcom/byazt/kft/c$12;->ve:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    return-void
.end method
