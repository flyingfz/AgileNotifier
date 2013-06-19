# encoding: utf-8

module AgileNotifier
  class Composer
    SENTENCES = [
        "%{committer_name} haben den Build kaputt gemacht",
        "Ich wird hab %{committer_name} mit dem Nerf abgeschossen",
        "%{committer_name}, scheiße, scheiße, scheiße, scheiße!!!"
    ]

    class << self
      def blame_committer_of_a_commit(args)
        repo = args[:repo]
        revision = args[:revision] || args[:build].revision
        committer_name = repo.get_committer_name_of_a_commit(revision)
        random_picker(SENTENCES).gsub(/%{committer_name}/, committer_name)
      end

      def random_picker(list)
        list[Random.rand(list.size)]
      end
    end

    private_class_method :random_picker
  end
end