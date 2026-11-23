.class public final synthetic Lcom/join/mgps/fragment/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/j2;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/j2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/e2;->b:Lcom/join/mgps/fragment/j2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e2;->b:Lcom/join/mgps/fragment/j2;

    invoke-static {v0, p1}, Lcom/join/mgps/fragment/j2;->Q(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V

    return-void
.end method
