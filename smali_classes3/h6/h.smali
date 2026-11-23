.class public final synthetic Lh6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lh6/i;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lh6/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/h;->b:Lh6/i;

    iput p2, p0, Lh6/h;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh6/h;->b:Lh6/i;

    iget v1, p0, Lh6/h;->c:I

    invoke-static {v0, v1, p1}, Lh6/i;->a(Lh6/i;ILandroid/view/View;)V

    return-void
.end method
