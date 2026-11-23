.class public Lcom/byazt/qq/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qq/tt;->ve(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qq/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/qq/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qq/tt$1;->c:Lcom/byazt/qq/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/qq/tt$1;->c:Lcom/byazt/qq/tt;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/qq/tt;->da:Lcom/byazt/sz/z;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
