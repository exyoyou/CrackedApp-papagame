.class public final synthetic Lcom/join/mgps/activity/f7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/MGMainActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/f7;->b:Lcom/join/mgps/activity/MGMainActivity$i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f7;->b:Lcom/join/mgps/activity/MGMainActivity$i;

    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity$i;->a(Lcom/join/mgps/activity/MGMainActivity$i;Landroid/content/DialogInterface;I)V

    return-void
.end method
