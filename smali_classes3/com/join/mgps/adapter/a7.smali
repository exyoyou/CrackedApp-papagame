.class public final synthetic Lcom/join/mgps/adapter/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/b7;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/b7;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/a7;->b:Lcom/join/mgps/adapter/b7;

    iput p2, p0, Lcom/join/mgps/adapter/a7;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a7;->b:Lcom/join/mgps/adapter/b7;

    iget v1, p0, Lcom/join/mgps/adapter/a7;->c:I

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/b7;->a(Lcom/join/mgps/adapter/b7;ILandroid/view/View;)V

    return-void
.end method
