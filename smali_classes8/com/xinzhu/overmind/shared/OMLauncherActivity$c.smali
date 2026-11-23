.class Lcom/xinzhu/overmind/shared/OMLauncherActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/shared/OMLauncherActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$c;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$c;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
