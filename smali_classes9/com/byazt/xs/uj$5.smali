.class public Lcom/byazt/xs/uj$5;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x6b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xs/uj;->c([BLcom/byazt/xs/uj$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:[B

.field public final synthetic tt:Lcom/byazt/xs/uj$c;

.field public final synthetic ve:Lcom/byazt/xs/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/xs/uj;Ljava/lang/String;[BLcom/byazt/xs/uj$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xs/uj$5;->ve:Lcom/byazt/xs/uj;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/xs/uj$5;->c:[B

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/xs/uj$5;->tt:Lcom/byazt/xs/uj$c;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xs/uj$5;->ve:Lcom/byazt/xs/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xs/uj$5;->c:[B

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/xs/uj;->c(Lcom/byazt/xs/uj;[B)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/byazt/xs/uj$5;->tt:Lcom/byazt/xs/uj$c;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lcom/byazt/xs/uj$c;->c(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
