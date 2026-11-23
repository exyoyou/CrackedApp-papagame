.class public Lcom/byazt/qq/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qq/n;->tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sgn/a;

.field public final synthetic tt:Lcom/byazt/qq/da;

.field public final synthetic ve:Lcom/byazt/qq/n;


# direct methods
.method public constructor <init>(Lcom/byazt/qq/n;Lcom/byazt/sgn/a;Lcom/byazt/qq/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qq/n$2;->ve:Lcom/byazt/qq/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qq/n$2;->c:Lcom/byazt/sgn/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qq/n$2;->tt:Lcom/byazt/qq/da;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/qq/n$2;->c:Lcom/byazt/sgn/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/qq/n$2;->tt:Lcom/byazt/qq/da;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/byazt/qq/da;->ve()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
