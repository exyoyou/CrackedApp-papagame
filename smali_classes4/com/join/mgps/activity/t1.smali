.class public final synthetic Lcom/join/mgps/activity/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/FullShareWebActivity$o;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity$o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/t1;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t1;->b:Lcom/join/mgps/activity/FullShareWebActivity$o;

    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity$o;->h(Lcom/join/mgps/activity/FullShareWebActivity$o;)V

    return-void
.end method
