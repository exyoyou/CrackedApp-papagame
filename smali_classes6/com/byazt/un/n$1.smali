.class public Lcom/byazt/un/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/n;->c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/n;


# direct methods
.method public constructor <init>(Lcom/byazt/un/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/n$1;->c:Lcom/byazt/un/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/un/n$1;->c:Lcom/byazt/un/n;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/un/a;->md:Lcom/byazt/un/tt;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/byazt/dh/c;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
