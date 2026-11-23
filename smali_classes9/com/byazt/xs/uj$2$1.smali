.class public Lcom/byazt/xs/uj$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x5ad
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xs/uj$2;->onSuccess(Lcom/byazt/yj/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yj/m;

.field public final synthetic tt:Lcom/byazt/xs/uj$2;


# direct methods
.method public constructor <init>(Lcom/byazt/xs/uj$2;Lcom/byazt/yj/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xs/uj$2$1;->tt:Lcom/byazt/xs/uj$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xs/uj$2$1;->c:Lcom/byazt/yj/m;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/xs/uj$2$1;->tt:Lcom/byazt/xs/uj$2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/xs/uj$2;->tt:Lcom/byazt/xs/uj;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/xs/uj$2$1;->c:Lcom/byazt/yj/m;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/byazt/xs/uj$2;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lcom/byazt/xs/uj;->c(Lcom/byazt/xs/uj;Lcom/byazt/yj/m;Landroid/widget/ImageView;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
