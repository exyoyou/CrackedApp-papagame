.class public final synthetic Lcom/join/mgps/activity/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/m2$a;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/CleanSpaceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/CleanSpaceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/n;->a:Lcom/join/mgps/activity/CleanSpaceActivity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/n;->a:Lcom/join/mgps/activity/CleanSpaceActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CleanSpaceActivity;->clean()V

    return-void
.end method
