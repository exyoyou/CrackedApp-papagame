.class public Lcom/byazt/dqg/sp$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x70c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dqg/sp$2;->onSuccess(Lcom/byazt/yj/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/graphics/drawable/Drawable;

.field public final synthetic tt:Lcom/byazt/dqg/sp$2;


# direct methods
.method public constructor <init>(Lcom/byazt/dqg/sp$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dqg/sp$2$1;->tt:Lcom/byazt/dqg/sp$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dqg/sp$2$1;->c:Landroid/graphics/drawable/Drawable;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/sp$2$1;->tt:Lcom/byazt/dqg/sp$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/dqg/sp$2;->c:Lcom/byazt/dqg/sp;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/dqg/sp$2$1;->c:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
