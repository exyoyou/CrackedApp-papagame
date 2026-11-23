.class public Lcom/sigmob/sdk/base/views/n;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/n$a;,
        Lcom/sigmob/sdk/base/views/n$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "n"


# instance fields
.field private b:Lcom/sigmob/sdk/base/views/n$b;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/view/Window;

.field private f:Lcom/sigmob/sdk/base/views/f;

.field private final g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private h:Landroid/widget/ImageView;

.field private i:Ljava/lang/String;

.field private j:Ljava/io/File;

.field private k:Z

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/os/Handler;

.field private n:Landroid/app/Activity;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "adUnit"
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/k;->f()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/n;->e:Landroid/view/Window;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/n;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/n;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/n;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/n;->b()Lcom/sigmob/sdk/base/views/f;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/n;->f()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/n;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/n;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/n;->b:Lcom/sigmob/sdk/base/views/n$b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sigmob/sdk/base/views/n$b;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/n;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/n;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/n;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/n;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/views/n;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/n;->m:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/views/n;)Lcom/sigmob/sdk/base/views/n$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/n;->b:Lcom/sigmob/sdk/base/views/n$b;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/sigmob/sdk/base/views/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/views/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/n;->i()V

    return-void
.end method

.method private e()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/n;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/n;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->ad_privacy:Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_info:Ljava/util/Map;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/e;->b(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_info:Ljava/util/Map;

    iput-object v2, v0, Lcom/sigmob/sdk/base/views/n;->c:Ljava/util/Map;

    :cond_1
    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_url:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/utils/o;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/o;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sigmob/sdk/base/utils/o;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/views/n;->j:Ljava/io/File;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "showWebView: ad_privacy is null."

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/sigmob/sdk/base/views/n;->j:Ljava/io/File;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/n;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v3, v0, Lcom/sigmob/sdk/base/views/n;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/n;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/f;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v3, v0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    new-instance v4, Lcom/sigmob/sdk/base/views/n$a;

    iget-object v5, v0, Lcom/sigmob/sdk/base/views/n;->c:Ljava/util/Map;

    invoke-direct {v4, v5}, Lcom/sigmob/sdk/base/views/n$a;-><init>(Ljava/util/Map;)V

    const-string v5, "sigPrivacy"

    invoke-virtual {v3, v4, v5}, Lcom/sigmob/sdk/base/views/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/n;->j:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/views/f;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v3, "PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9ImVuIj4KPGhlYWQ+CiAgICA8bWV0YSBjaGFyc2V0PSJVVEYtOCI+CiAgICA8bWV0YSBuYW1lPSJ2aWV3cG9ydCIKICAgICAgICAgIGNvbnRlbnQ9IndpZHRoPWRldmljZS13aWR0aCxpbml0aWFsLXNjYWxlPTEsbWF4aW11bS1zY2FsZT0xLHVzZXItc2NhbGFibGU9MCI+CiAgICA8bWV0YSBjb250ZW50PSJ5ZXMiIG5hbWU9ImFwcGxlLW1vYmlsZS13ZWItYXBwLWNhcGFibGUiPgogICAgPG1ldGEgaHR0cC1lcXVpdj0iWC1VQS1Db21wYXRpYmxlIiBjb250ZW50PSJJRT1lZGdlLGNocm9tZT0xIj4KICAgIDxtZXRhIG5hbWU9InJlbmRlcmVyIiBjb250ZW50PSJ3ZWJraXQiPgogICAgPGxpbmsgcmVsPSJpY29uIiBocmVmPSJkYXRhOmltYWdlL2ljbztiYXNlNjQsYVdOdiI+CiAgICA8dGl0bGU+5paw54mINuimgee0oDY2NjI8L3RpdGxlPgogICAgPHN0eWxlPmh0bWwsIGJvZHksICNhcHAgewogICAgICBtYXJnaW46IDA7CiAgICAgIHdpZHRoOiAxMDB2dzsKICAgICAgaGVpZ2h0OiAxMDB2aDsKICAgICAgb3ZlcmZsb3c6IGhpZGRlbjsKICAgICAgYmFja2dyb3VuZDogdHJhbnNwYXJlbnQgIWltcG9ydGFudDsKICAgIH0KICAgICNlcnJvcl9tYXNrIHsKICAgICAgZGlzcGxheTogbm9uZTsKICAgICAgZmxleC1kaXJlY3Rpb246IGNvbHVtbjsKICAgICAgd2lkdGg6IDEwMHZ3OwogICAgICBoZWlnaHQ6IDEwMHZoOwogICAgICBhbGlnbi1pdGVtczogY2VudGVyOwogICAgICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjsKICAgICAgYmFja2dyb3VuZDogcmdiYSgwLDAsMCwwLjYpOwogICAgfQogICAgI2Vycm9yX21hc2sgLmNsb3NlIHsKICAgICAgei1pbmRleDogOTk5OTsKICAgICAgd2lkdGg6IDI4cHg7CiAgICAgIGhlaWdodDogMjhweDsKICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2UzMzEyMjsKICAgICAgY29sb3I6ICNmZmY7CiAgICAgIHBhZGRpbmc6IDRweDsKICAgICAgYm9yZGVyLXJhZGl1czogNTAlOwogICAgICB0b3A6IDEwcHg7CiAgICAgIHJpZ2h0OiAxMHB4OwogICAgfQogICAgI2Vycm9yX21hc2sgLmVycm9yIHsKICAgICAgZm9udC1zaXplOiAyMHB4OwogICAgICBjb2xvcjogI2UzMzEyMjsKICAgICAgbWFyZ2luLWJvdHRvbTogMjBweDsKICAgIH0KICAgIDwvc3R5bGU+CiAgICA8ZGl2IGlkPSJlcnJvcl9tYXNrIj48cCBjbGFzcz0iZXJyb3IiPuWFreimgee0oOWKoOi9veWksei0pX48L3A+CiAgICAgICAgPHN2ZyBjbGFzcz0iY2xvc2UiIGlkPSJjbG9zZSIgZmlsbD0iY3VycmVudENvbG9yIiB0PSIxNTk1NDc1OTMzNzE2IiBjbGFzcz0iaWNvbiIKICAgICAgICAgICAgIHZpZXdCb3g9IjAgMCAxMDI0IDEwMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBwLWlkPSIyMDExIgogICAgICAgICAgICAgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgICAgICAgICA8cGF0aCBkPSJNMTAzLjY4OCA5MzguNTc2YTI4IDI4IDAgMCAxLTE5LjgtNDcuOEw4OTguMTUyIDc2LjUyYTI4IDI4IDAgMSAxIDM5LjYgMzkuNTkyTDEyMy40ODggOTMwLjRhMjcuOTIgMjcuOTIgMCAwIDEtMTkuOCA4LjE3NnoiPjwvcGF0aD4KICAgICAgICAgICAgPHBhdGggZD0iTTkxNy45NTIgOTM4LjU3NmEyNy45MjggMjcuOTI4IDAgMCAxLTE5LjgtOC4yTDgzLjg4OCAxMTYuMTEyYTI4IDI4IDAgMCAxIDM5LjYtMzkuNTkybDgxNC4yNjQgODE0LjI1NmEyOCAyOCAwIDAgMS0xOS44IDQ3Ljh6Ij48L3BhdGg+CiAgICAgICAgPC9zdmc+CiAgICA8L2Rpdj4KICAgIDxzY3JpcHQ+ZnVuY3Rpb24gaWZyYW1lU2VuZFNyYyhzcmMpIHsKICAgICAgdmFyIGlmcmFtZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ2lmcmFtZScpCiAgICAgIGlmcmFtZS5zZXRBdHRyaWJ1dGUoJ3NyYycsIHNyYykKICAgICAgZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50LmFwcGVuZENoaWxkKGlmcmFtZSkKICAgICAgaWZyYW1lLnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoaWZyYW1lKQogICAgICBpZnJhbWUgPSBudWxsCiAgICB9CgogICAgc2V0VGltZW91dCgoKSA9PiB7CiAgICAgIGlmICghd2luZG93LklOSVQpIHsKICAgICAgICBjb25zdCBlcnJvck1hc2sgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnZXJyb3JfbWFzaycpCiAgICAgICAgY29uc3QgY2xvc2VEb20gPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnY2xvc2UnKQogICAgICAgIGVycm9yTWFzay5zdHlsZS5kaXNwbGF5ID0gJ2ZsZXgnCiAgICAgICAgY2xvc2VEb20ub25jbGljayA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgIGlmcmFtZVNlbmRTcmMoJ3NpZ21vYkFkOi8vY2xvc2VGb3VyRWxlbWVudHMnKQogICAgICAgIH0KICAgICAgfQogICAgfSwgMzAwMCkKICAgIDwvc2NyaXB0PgogICAgPGxpbmsgaHJlZj0iaHR0cHM6Ly9uLnNpZ21vYi5jbi9tcmFpZC9wcm9kLzY2NjIvNjY2Mi5hMzM2ZDVlMS5qcyIgcmVsPSJwcmVsb2FkIiBhcz0ic2NyaXB0Ij4KICAgIDxsaW5rIGhyZWY9Imh0dHBzOi8vbi5zaWdtb2IuY24vbXJhaWQvcHJvZC82NjYyLzY2NjIuYzc1MDZhMDcuY3NzIiByZWw9InByZWxvYWQiIGFzPSJzdHlsZSI+CiAgICA8bGluayBocmVmPSJodHRwczovL24uc2lnbW9iLmNuL21yYWlkL3Byb2QvNjY2Mi82NjYyLmM3NTA2YTA3LmNzcyIgcmVsPSJzdHlsZXNoZWV0Ij4KICAgIDxzY3JpcHQ+CiAgICAgICAgdmFyIHNpZ21vYj13aW5kb3cuc2lnbW9iPXt9LHByaXZhY3lJbmZvPXt9LGlmcmFtZVNlbmRTcmM9ZnVuY3Rpb24oaSl7dmFyIG89ZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgiaWZyYW1lIik7by5zZXRBdHRyaWJ1dGUoInNyYyIsaSksZG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50LmFwcGVuZENoaWxkKG8pLG8ucGFyZW50Tm9kZS5yZW1vdmVDaGlsZChvKX0saW5pdFByaXZhY3lJbmZvPShzaWdtb2IuZ2V0UHJpdmFjeUluZm89ZnVuY3Rpb24oKXtyZXR1cm4gcHJpdmFjeUluZm99LHNpZ21vYi5jbG9zZUZvdXJFbGVtZW50cz1mdW5jdGlvbigpe2lmcmFtZVNlbmRTcmMoInNpZ21vYkFkOi8vY2xvc2VGb3VyRWxlbWVudHMiKX0sc2lnbW9iLnVzZUN1c3RvbUNsb3NlPWZ1bmN0aW9uKCl7aWZyYW1lU2VuZFNyYygic2lnbW9iQWQ6Ly91c2VDdXN0b21DbG9zZSIpfSxzaWdtb2IuYnV0dG9uQ2xpY2s9ZnVuY3Rpb24oaSxvLG4pe2lmcmFtZVNlbmRTcmMobj8ic2lnbW9iQWQ6Ly9idXR0b25DbGljaz91cmw9IituKyImeD0iK2krIiZ5PSIrbzoic2lnbW9iQWQ6Ly9idXR0b25DbGljaz94PSIraSsiJnk9IitvKX0sZnVuY3Rpb24oKXt3aW5kb3cuc2lnUHJpdmFjeT9wcml2YWN5SW5mbz13aW5kb3cuc2lnUHJpdmFjeS5nZXRQcml2YWN5SW5mbygpOmNvbnNvbGUuZXJyb3IoInNpZ1ByaXZhY3nms6jlhozlpLHotKU9PT0iKX0pO2luaXRQcml2YWN5SW5mbygpOwogICAgPC9zY3JpcHQ+CjwvaGVhZD4KPGJvZHk+CjxkaXYgaWQ9ImFwcCI+PC9kaXY+CjxzY3JpcHQgc3JjPSJodHRwczovL24uc2lnbW9iLmNuL21yYWlkL3Byb2QvNjY2Mi82NjYyLmEzMzZkNWUxLmpzIj48L3NjcmlwdD4KPC9ib2R5Pgo8L2h0bWw+"

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v3, v0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    const/4 v4, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "h5_error"

    const-string v10, "download_dialog"

    const/4 v11, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " error: htmlUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sigmob/sdk/base/views/n;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " htmlFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sigmob/sdk/base/views/n;->j:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " exists "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/sigmob/sdk/base/views/n;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :goto_3
    return-void
.end method

.method private f()Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/n;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    sget-object v1, Lcom/sigmob/sdk/base/views/p;->e:Lcom/sigmob/sdk/base/views/p;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/p;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/sigmob/sdk/base/views/m0;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/m0;-><init>(Lcom/sigmob/sdk/base/views/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/n;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->l:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private h()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/n;->e:Landroid/view/Window;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/n;->e:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private synthetic i()V
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/n;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/n;->g()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/views/n$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/n;->b:Lcom/sigmob/sdk/base/views/n$b;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/sigmob/sdk/base/views/f;
    .locals 2

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/views/f;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/n;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/f;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/n;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/f;->setAdUnit(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/f;->a(Lcom/sigmob/sdk/base/common/b;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    new-instance v1, Lcom/sigmob/sdk/base/views/n$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/n$1;-><init>(Lcom/sigmob/sdk/base/views/n;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    new-instance v1, Lcom/sigmob/sdk/base/views/n$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/n$2;-><init>(Lcom/sigmob/sdk/base/views/n;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/f;->destroy()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->m:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/n;->m:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/x;->a(Landroid/view/View;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->d:Landroid/content/Context;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/n;->d:Landroid/content/Context;

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->b:Lcom/sigmob/sdk/base/views/n$b;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/n;->b:Lcom/sigmob/sdk/base/views/n$b;

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/n;->l:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/n;->e:Landroid/view/Window;

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/c;->a(Landroid/view/Window;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/n;->l:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/n;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/n;->f:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/n;->m:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/base/views/n0;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/n0;-><init>(Lcom/sigmob/sdk/base/views/n;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/n;->h()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    sget-object p1, Lcom/sigmob/sdk/base/views/n;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDismiss"

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/base/utils/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/n;->n:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/base/views/n;->o:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/n;->n:Landroid/app/Activity;

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/n;->b:Lcom/sigmob/sdk/base/views/n$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/views/n$b;->a()V

    :cond_1
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    sget-object p1, Lcom/sigmob/sdk/base/views/n;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "onShow"

    invoke-static {v2, p1, v3, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->b(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/n;->b:Lcom/sigmob/sdk/base/views/n$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sigmob/sdk/base/views/n$b;->b()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/sigmob/sdk/b;->i()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/n;->n:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->c()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/n;->n:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->n:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/n;->o:I

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getOrientationInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->n:Landroid/app/Activity;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->n:Landroid/app/Activity;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/n;->e()V

    return-void
.end method
