.class public final synthetic Lcom/join/mgps/activity/t7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/t7;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t7;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->n(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;)V

    return-void
.end method
