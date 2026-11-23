.class public abstract Lcom/join/mgps/wrapper/SystemUiHider/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/wrapper/SystemUiHider/d$a;,
        Lcom/join/mgps/wrapper/SystemUiHider/d$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/app/Activity;[[Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "urls"
        }
    .end annotation

    .line 1
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/wrapper/SystemUiHider/d$a;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/wrapper/SystemUiHider/d$a;-><init>(Landroid/content/Context;[[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/wrapper/SystemUiHider/d$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/wrapper/SystemUiHider/d$b;-><init>(Landroid/app/Activity;[[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
