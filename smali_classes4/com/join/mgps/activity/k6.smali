.class public final synthetic Lcom/join/mgps/activity/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/k6;->b:Lcom/join/mgps/activity/MGMainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k6;->b:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->E(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
