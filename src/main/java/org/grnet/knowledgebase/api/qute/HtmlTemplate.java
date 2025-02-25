package org.grnet.knowledgebase.api.qute;

import io.quarkus.qute.Template;
import io.quarkus.vertx.web.Route;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.config.inject.ConfigProperty;

@ApplicationScoped
public class HtmlTemplate {

    @Inject
    Template client;

    @Inject
    Template index;

    @ConfigProperty(name = "kb.html.oidc.client.url")
    String apiHtmlOidcClientUrl;

    @ConfigProperty(name = "kb.html.graphql.playground")
    String apiHtmlGraphqlPlayground;

    @ConfigProperty(name = "kb.html.keycloak.url")
    String keycloakServerUrl;

    @ConfigProperty(name = "kb.html.keycloak.realm")
    String keycloakServerRealm;

    @ConfigProperty(name = "kb.html.keycloak.public.client.id")
    String keycloakServerClientId;

    @ConfigProperty(name = "kb.html.keycloak.javascript.adapter")
    String keycloakServerJavascriptAdapter;

    @Route(path = "/", methods = Route.HttpMethod.GET)
    public String landingPage() {

        return index
                .data("kb_oidc_client_url", apiHtmlOidcClientUrl)
                .data("kb_documentation", apiHtmlGraphqlPlayground)
                .render();
    }

    @Route(path = "/oidc-client", methods = Route.HttpMethod.GET)
    public String oidcClient() {

        return client
                .data("keycloak_server_url", keycloakServerUrl,
                        "keycloak_server_realm", keycloakServerRealm,
                        "keycloak_server_client_id", keycloakServerClientId,
                        "keycloak_server_javascript_adapter", keycloakServerJavascriptAdapter)
                .render();
    }
}
